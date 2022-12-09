SELF=/usr/local/bin/Self
BASE=./self/objects
ROOT=$(PWD)

all: service_jail

base.txz:
	fetch https://download.freebsd.org/releases/amd64/13.1-RELEASE/base.txz

service_jail: base.txz
	mkdir service_jail	
	cd service_jail && tar -xf ../base.txz
	jail -cmr path=$(ROOT)/service_jail name=service_jail host.hostname=service_jail ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc
	@echo
	@echo '* * * * * * * * * * * * * * * *'
	@echo '*  RUNNING IN JAIL            *'
	@echo '* * * * * * * * * * * * * * * *'	
	@echo
	jexec service_jail ps aux
	@echo
	@echo
	@echo '* * * * * * * * * * * * * * * *'
	@echo '*  CLOSING JAIL               *'
	@echo '* * * * * * * * * * * * * * * *'		
	@echo
	jail -r service_jail
	umount $(ROOT)/service_jail/dev

boot.snap:
	echo "saveAs: 'snapshot'. quitNoSave" | $(SELF) -f $(BASE)/worldBuilder.self -b $(BASE) -f2 setup.self -o morphic 

clean_service_jail:
	touch service_jail && chflags -Rf noschg service_jail
	rm -rf service_jail	

clean: clean_service_jail
	rm -f snapshot
	rm -f base.txz
