SELF=/usr/local/bin/Self
BASE=./self/objects
ROOT=$(PWD)

#
#	All is setup
#

all: jail_for_xvnc jail_for_git boot.snap

#
#	Starting and stopping when built
#

run_jails: run_jail_for_xvnc run_jail_for_git

stop_jails: stop_jail_for_xvnc stop_jail_for_git

run_jail_for_xvnc:
	jail -cmr path=$(ROOT)/jail_for_xvnc name=jail_for_xvnc host.hostname=jail_for_xvnc ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc
	jexec jail_for_xvnc daemonize /usr/local/bin/Xvnc :1 -geometry 1024x768 -depth 24 -SecurityTypes None,TLSNone -listen tcp
	sleep 1
	jexec jail_for_xvnc daemonize -E DISPLAY=:1 /usr/local/bin/ratpoison 

stop_jail_for_xvnc:
	jail -r jail_for_xvnc
	umount $(ROOT)/jail_for_xvnc/dev

run_jail_for_git:
	jail -cmr path=$(ROOT)/jail_for_git name=jail_for_git host.hostname=jail_for_git ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc
	mkdir -p $(ROOT)/jail_for_git/opt/Persona
	mount_nullfs $(ROOT) $(ROOT)/jail_for_git/opt/Persona

stop_jail_for_git:
	jail -r jail_for_git
	umount $(ROOT)/jail_for_git/dev
	umount $(ROOT)/jail_for_git/opt/Persona

#
#	For building 
#

base.txz:
	fetch https://download.freebsd.org/releases/amd64/13.1-RELEASE/base.txz

jail_for_xvnc: base.txz
	mkdir jail_for_xvnc	
	cd jail_for_xvnc && tar -xf ../base.txz
	cp /etc/resolv.conf jail_for_xvnc/etc/
	jail -cmr path=$(ROOT)/jail_for_xvnc name=jail_for_xvnc host.hostname=jail_for_xvnc ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc
	jexec jail_for_xvnc pkg install --quiet -y tigervnc-server ratpoison xlsfonts xorg-fonts terminus-font urwfonts xset daemonize
	jail -r jail_for_xvnc
	umount $(ROOT)/jail_for_xvnc/dev

clean_jail_for_xvnc:
	touch jail_for_xvnc && chflags -Rf noschg jail_for_xvnc
	rm -rf jail_for_xvnc	

jail_for_git: base.txz
	mkdir jail_for_git
	cd jail_for_git && tar -xf ../base.txz
	cp /etc/resolv.conf jail_for_git/etc/
	jail -cmr path=$(ROOT)/jail_for_git name=jail_for_git host.hostname=jail_for_git ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc
	jexec jail_for_git pkg install --quiet -y git
	jail -r jail_for_git
	umount $(ROOT)/jail_for_git/dev	

clean_jail_for_git:
	touch jail_for_git && chflags -Rf noschg jail_for_git
	rm -rf jail_for_git	

boot.snap:
	echo "saveAs: 'snapshot'. quitNoSave" | $(SELF) -f $(BASE)/worldBuilder.self -b $(BASE) -f2 setup.self -o morphic 

clean: clean_jail_for_xvnc clean_jail_for_git
	rm -f snapshot
	rm -f base.txz
