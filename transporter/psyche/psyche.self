 '2023.06.08.01'
 '
Copyright 2022-2023 OurSelf-Systems.
See the LICENSE,d file for license information.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         psyche = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules psyche.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'
Copyright 2022-2023 OurSelf-Systems.
See the LICENSE,d file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022-2023 OurSelf-Systems.
See the LICENSE,d file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            resend.postFileIn.
            snapshotAction addSchedulerInitialMessage:
              message copy receiver: psyche Selector: 'boot'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'2023.06.08.01\')\x7fVisibility: public'
        
         revision <- '2023.06.08.01'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'psyche\')'
        
         tree <- 'psyche'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: psyche\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         psyche = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: jails\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         base_zero = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche base_zero.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyInDtach = ( |
             b.
            | 
            b: '/worlds/base/zero'.
            sys sh: 'cp /usr/local/bin/dtach ', b, '/bin'.
            sys sh: 'cp /lib/libutil.so.9 ', b, '/lib'.
            sys sh: 'cp /lib/libc.so.7 ', b, '/lib').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         destroy = ( |
            | 
            " Clean "
            sys sh: 'chflags -R noschg /worlds/base/core_13_1/*' IfFail: false.
            sys sh: 'umount /worlds/base/core_13_1/dev' IfFail: false.
            sys sh: 'rm -rf /worlds/base/core_13_1/*' IfFail: false.
            sys sh: 'zfs destroy -r worlds/base/core_13_1'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setup = ( |
            | 
            " Create dataset "
            sys sh: 'zfs create -p worlds/base/zero'.

            " Clean dataset "
            sys sh: 'rm -r /worlds/base/zero/*'.

            " Create structure "
            sys sh: 'mkdir -p /worlds/base/zero/dev'.
            sys sh: 'mkdir -p /worlds/base/zero/var'.
            sys sh: 'mkdir -p /worlds/base/zero/var/run'.
            sys sh: 'mkdir -p /worlds/base/zero/libexec'.
            sys sh: 'mkdir -p /worlds/base/zero/lib'.
            sys sh: 'mkdir -p /worlds/base/zero/etc'.
            sys sh: 'mkdir -p /worlds/base/zero/tmp'.

            " Copy in needed files "
            sys sh: 'cp -r /vm /worlds/base/zero/'.
            sys sh: 'tar -c /rescue/* | tar -xC /worlds/base/zero/'.
            sys sh: 'mv /worlds/base/zero/rescue /worlds/base/zero/bin'.
            sys sh: 'cp -r /libexec/* /worlds/base/zero/libexec/'.

            " resolv.conf "
            sys sh: 'cp /etc/resolv.conf /worlds/base/zero/etc/resolv.conf'.

            copyInDtach.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         start = ( |
             d.
             n.
            | 
            n: 'zero'. 
            d: '/worlds/base/zero'.
            sys sh: 'jail -cmr path="', d, '" name=', n, ' host.hostname=', n,  ' mount.devfs command=dtach -n /var/self.sock /vm/Self'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'base_zero' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( | {
         'Comment: Entry point.

\"
if we hae restarted,
   revmoe restart flag
   continue boot
if we have not restarted and objectDir is default:
   continue boot
otherwise:
   set restart flag to new objectDir
   exit this world
\"\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         withConf: conf = ( |
            | 
            restartFlagExists ifTrue: [
              removeRestartFlag. ^ self].
            psyche config default objectsDirectory = conf objectsDirectory
               ifTrue: [^ self].
            " We haven't yet restarted, but config file tells us we should"
            sys write: conf objectsDirectory 
               ToFile: restartFlagFilename
               IfFail: [log error: 'Could not write restart flag! Ignoring objectsDirectory config entry.'. ^ self].
            _Quit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mainBootRoutine = ( |
             conf.
            | 
            importWorldsZpoolIfFail: prepareStorage.
            config loadIfFail: installOS.
            conf: config current.
            handleAlternateObjectRoot withConf: conf.
            conf systemDesktop = 'enabled' ifTrue: [
              setFirewall: conf systemDesktopAccessType.
              openDesktop].
            conf developmentMachine = 'enabled'
               ifTrue: setupForDevelopment.
            welcomeMessage print.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         openDesktop = ( |
            | 
            startX.
            desktop isOpen 
             ifTrue: [desktop restartSuppressedFlag: false. 
                      desktop returnFromSnapshot]
              False: [desktop open].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: users\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         addFreeBSDUser: u IfFail: blk = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: users\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         freebsdUsersIfFail: blk = ( |
             f.
             u.
            | 
            f: readFileFrom: '/etc/passwd' IfFail: [^ blk value: 'Could not read /etc/passwd'].
            ((f splitOn: '\n') 
              mapBy: [|:l| (l splitOn: ':') first])
              filterBy: [|:l| (l != '') && ['#' != l first]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: mkdir\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mkdir_p: dir IfFail: blk = ( |
            | sh: 'mkdir -p ', dir IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: pf\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         pfOpenPort: p = ( |
            | 
            sh: 'echo "pass in inet proto tcp to any port ', p asString, '" >> /etc/pf.conf' IfFail: [
              log error: 'Could not amend /etc/pf.conf'].
            restartPf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: pwd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         pwd = ( |
            | 
            (os outputOfCommand: 'pwd' Timeout: 10 IfFail: [error: 'Can\'t find PWD']) shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         readFileFrom: fileName IfFail: blk = ( |
             b <- ''.
             eof <- bootstrap stub -> 'globals' -> 'false' -> ().
             f <- bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os_file' -> ().
            | 
            "
              The IO code need reworking in its entirity.
              Until then, we'll do it ourselves here so that
              we don't have any user errors at this level.
            "
            f: fileName asInputFileIfError: [
                f closeIfFail: false.
                ^ blk value: 'Error: could not open file: ', fileName].
            [eof] whileFalse: [
              b: b, (f readIfFail: [|:err|
                f closeIfFail: false.
                (err slice: 0 @ 3) = 'EOF'
                  ifTrue: [eof: true]
                   False: [^ blk value: 'Error: could not read file: ', fileName].
                ''])].
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: shutdown\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reboot = ( |
            | 
             sh: 'shutdown -r now' IfFail: [
              log error: 'Shutdown failed'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: files and directories\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         removeFile: fn IfFail: blk = ( |
            | 
            sh: 'rm ', fn IfFail: [^ blk value: 'Could not remove ', fn]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: pf\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         restartPf = ( |
            | 
            sh: 'pfctl -vnf /etc/pf.conf && pfctl -F all -f /etc/pf.conf' IfFail: [
              log error: 'Could not restart pf'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: jails\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         runningJails = ( |
            | 
            sh: 'jls' ResultInMs: 100 IfFail: [
              log error: 'Could not run jls'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fComment: Only use this manually\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd = ( |
            | 
            sh: cmd IfFail: [|:e| ^ error: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd IfFail: blk = ( |
             r.
            | 
            r:  os command: cmd.
            r = 0 ifFalse: [^ blk value: r].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fComment: Only use on command line\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd InJail: j = ( |
            | 
            sh: 'jexec ', j, ' ', cmd IfFail: [
              log error: 'Failed to run: ', cmd, ' in jail ', j].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd ResultInMs: ms IfFail: blk = ( |
            | os outputOfCommand: cmd Timeout: ms IfFail: [blk value: 'Cmd ', cmd, ' in jail ', j, ' failed']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: shutdown\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shutdown = ( |
            | 
             sh: 'shutdown -p now' IfFail: [
              log error: 'Shutdown failed'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: jails\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJailNamed: n InDir: d = ( |
             cmd.
            | 
            cmd: 'jail -cmr path="', d, '" name=', n, ' host.hostname=', n,  ' ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc'.
            sh: cmd IfFail: [
              log error: 'Failed to start jail ', n, ' in directory ', d].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: sshd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startSSHD = ( |
            | 
            sh: 'service sshd onestart' IfFail: [
              log warn: 'Cannot start SSHD'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: jails\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopJailNamed: n = ( |
            | 
            sh: 'jail -r ', n IfFail: [
              log error: 'Failed to stop jail named ', n].
            self
            sh: 'umount ', pwd, '/', n, '/dev' IfFail: [
              log error: 'Failed to unmount /dev in stopped jail named ', n].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         write: s ToFile: fileName IfFail: blk = ( |
             f <- bootstrap stub -> 'globals' -> 'unixGlobals' -> 'os_file' -> ().
            | 
            "
              The IO code need reworking in its entirity.
              Until then, we'll do it ourselves here so that
              we don't have any user errors at this level.
            "
            f: os_file openForWriting: fileName IfFail: [
                f closeIfFail: false.
                ^ blk value: 'Error: could not open file: ', fileName].
            f write: s IfFail: [|:err|
                f closeIfFail: false.
                ^ blk value: 'Error: could not write file: ', fileName].
            f closeIfFail: [
                blk value: 'Error: error closing file: ', fileName].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'snapshotAction' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         schedulerInitial = ( |
            | 
            log info: 'Psyche Scheduler started (according to snapshotAction schedulerInitial)'.
            psyche preventPromptStart.
            schedulerInitialMessages do: [|:msg| msg fork resume].
            self).
        } | ) 



 '-- Side effects'

 globals modules psyche postFileIn
