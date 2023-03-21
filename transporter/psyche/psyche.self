 '2023.02.27.01'
 '
Copyright 2022 OurSelf-Systems.
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
Copyright 2022 OurSelf-Systems.
See the LICENSE,d file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022 OurSelf-Systems.
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
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'2023.02.27.01\')\x7fVisibility: public'
        
         revision <- '2023.02.27.01'.
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
         'Category: applications\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         psyche = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: users\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         addFreeBSDUser: u IfFail: blk = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fComment: This is the main entry point for booting\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         boot = ( |
            | 
            ensureLogging. 
            bootIsSuspended 
                ifTrue: [log info: 'Boot skipped with --suspendPsycheBootRoutine']
                 False: [mainBootRoutine]. 
            startPrompt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         bootIsSuspended = ( |
            | 
            " use primitive so we cover building on commandline "
            _CommandLine includes: '--suspendPsycheBootRoutine').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         systemConfigPrototype = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche systemConfigPrototype.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche systemConfigPrototype)'
        
         currentSystemConfig <- bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fComment: This starts a sshd for login as \'control\' user. 
Only allows port forwarding, no shell.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopFirewallSSH = ( |
            | 
            ensureSystemUser.
            saveSSHKey.
            startSSHD.
            pfOpenPort: 22.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fComment: This punches a hole in the firewall at port 5901 and 
exposes VNC without a password or encryption. 

DO NOT USE over the open internet!\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopFirewallUnsafe = ( |
            | 
            pfOpenPort: 5901.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureLogging = ( |
            | 
            " Pluggable until netbsd branch is merged "
            ((reflect: log prototypeHandlers) includesKey: 'allToFile')
              ifTrue: [log dispatcher add: log prototypeHandlers allToFile].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureSystemUser = ( |
             logError.
             logWarning.
             userName = 'system'.
             users.
            | 
            logError:   [|:m| log error: 'In "ensureSystemUser", ', m. ^ self].
            logWarning: [|:m| log warn:  'In "ensureSystemUser", ', m. ^ self].

            " Does system user exist? "
            users: freebsdUsersIfFail: [logError value: 'Cannot determine FreeBSD users'].
            (users includes: userName) ifTrue: [logWarning value: '"', userName, '" user already exists.'].

            " Add system user "
            sh: 'pw useradd -n ', userName, ' -m -s /sbin/nologin ' IfFail: [logError: 'Cannot create user "', userName, '"'].
            " -s /sbin/nologin "
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         importWorldsZpoolIfFail: blk = ( |
             ignoreError.
            | 
            sh: '/sbin/zpool import' IfFail: [blk value].
            sh: '/sbin/zpool import worlds' IfFail: ignoreError.
            sh: 'ls /worlds' IfFail: [blk value].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: installation\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         installOS = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche installOS.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'psyche' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         value = ( |
             conf.
            | 

            'psyche.conf not found.' printLine.
            'Please answer these questions: ' printLine.

            conf: systemConfigPrototype copy setViaWizard.
            conf writeTo: '/worlds/psyche/psyche.conf' IfFail: [
              log error: 'Did not save!'].
            loadConfigIfFail: [
              log error: 'Did not read!'].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: development\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         installSSHKeys = ( |
            | 
            os command: 'mkdir /root/.ssh'.
            os command: 'cp /worlds/psyche/.ssh/* /root/.ssh/'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         loadConfigIfFail: blk = ( |
            | 
            currentSystemConfig: systemConfigPrototype copyReadFrom: '/worlds/psyche/psyche.conf' IfFail: [|:e| ^ blk value: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mainBootRoutine = ( |
             conf.
            | 
            importWorldsZpoolIfFail: prepareStorage.
            loadConfigIfFail: installOS.
            conf: currentSystemConfig.
            conf systemDesktop = 'enabled' ifTrue: [
              setFirewall: conf systemDesktopAccessType.
              startX.
              desktop open].
            conf developmentMachine = 'enabled' ifTrue: [
              installSSHKeys.
              setGitDetails].
            welcomeMessage print.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config - builtin\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'/objects\')'
        
         objectsDirectory <- '/objects'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: pf\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         pfOpenPort: p = ( |
            | 
            sh: 'echo "pass in inet proto tcp to any port ', p asString, '" >> /etc/pf.conf' IfFail: [
              log error: 'Could not amend /etc/pf.conf'].
            restartPf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: installation\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         prepareStorage = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche prepareStorage.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'psyche' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         value = ( |
            | 
            'Storage (zpool worlds) cannot be found.' printLine.
            'Please create manually, then we will reboot.' printLine.
            '"exit" when finished.' printLine.
            sh: 'bash' IfFail: false.
            'Thanks, rebooting now.' printLine.
            reboot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         preventPromptStart = ( |
            | 
            bootIsSuspended ifFalse: [
              snapshotAction schedulerInitialMessages filterBy: [|:e|
                e selector != 'mainInputLoop']].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: pwd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         pwd = ( |
            | 
            (os outputOfCommand: 'pwd' Timeout: 10 IfFail: [error: 'Can\'t find PWD']) shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: shutdown\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reboot = ( |
            | 
             sh: 'shutdown -r now' IfFail: [
              log error: 'Shutdown failed'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: pf\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         restartPf = ( |
            | 
            sh: 'pfctl -vnf /etc/pf.conf && pfctl -F all -f /etc/pf.conf' IfFail: [
              log error: 'Could not restart pf'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: jails\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         runningJails = ( |
            | 
            sh: 'jls' ResultInMs: 100 IfFail: [
              log error: 'Could not run jls'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         saveSSHKey = ( |
             f.
            | 
            sh: 'mkdir -p /home/system/.ssh' IfFail: [|:m| 
              log error: 'In "saveSSHKey" canoot make .ssh dir'. ^ self].

              write: currentSystemConfig systemDesktopSSHKey
             ToFile: '/home/system/.ssh/authorized_keys'
             IfFail: [|:m| log error: 'In "saveSSHKey", ', m. ^ self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setFirewall: type = ( |
            | 
            case
               if: 'unsafe' = type Then: [ desktopFirewallUnsafe ]
               If: 'ssh'    = type Then: [ desktopFirewallSSH    ]
               Else: [
                    log error: 'Unknown desktop access method: ', type.
                    process this sleep: 10 * 1000].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: development\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setGitDetails = ( |
            | 
            os command: 'cd ', objectsDirectory, ' ; git config user.name = "Russell Allen"'.
            os command: 'cd ', objectsDirectory, ' ; git config user.email = "mail@russell-allen.com"'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd IfFail: blk = ( |
             r.
            | 
            r:  os command: cmd.
            r = 0 ifFalse: [^ blk value: r].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd InJail: j = ( |
            | 
            sh: 'jexec ', j, ' ', cmd IfFail: [
              log error: 'Failed to run: ', cmd, ' in jail ', j].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd ResultInMs: ms IfFail: blk = ( |
            | os outputOfCommand: cmd Timeout: ms IfFail: [blk value: 'Cmd ', cmd, ' in jail ', j, ' failed']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: shutdown\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shutdown = ( |
            | 
             sh: 'shutdown -p now' IfFail: [
              log error: 'Shutdown failed'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: jails\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJailNamed: n InDir: d = ( |
             cmd.
            | 
            cmd: 'jail -cmr path="', d, '" name=', n, ' host.hostname=', n,  ' ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc'.
            sh: cmd IfFail: [
              log error: 'Failed to start jail ', n, ' in directory ', d].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startPrompt = ( |
             m.
            | 
            m: message copy receiver: prompt Selector: 'mainInputLoop'.
            m fork resume.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system\x7fCategory: sshd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startSSHD = ( |
            | 
            sh: 'service sshd onestart' IfFail: [
              log warn: 'Cannot start SSHD'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startX = ( |
            | 
            os command: 'daemon /usr/local/bin/Xvnc :1 -geometry 1024x768 -depth 24 -SecurityTypes None,TLSNone'.
            process this sleep: 2000.
            os command: 'DISPLAY=:1 daemon /usr/local/bin/ratpoison'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'disabled\')'
        
         developmentMachine <- 'disabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configFile = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche traits configFile.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fileSync* = bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'disabled\')'
        
         systemDesktop <- 'disabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'unsafe\')'
        
         systemDesktopAccessType <- 'unsafe'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'rsa\')'
        
         systemDesktopSSHKey <- 'rsa'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         traits = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche traits.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         asConfigFileString = ( |
             s <- ''.
            | 
              slotsToRead do: [|:slot|
                s: s, slot, ' = ', (slot sendTo: self), '\n'].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: reading\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyReadFrom: fileName IfFail: blk = ( |
             c.
             d.
            | 
            d: readConfigFileFrom: fileName IfFail: [|:e| ^ blk value: e].
            c: copy.
            slotsToRead do: [|:s|
              (s, ':') sendTo: c With: (d at: s IfAbsent: [s sendTo: c])].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: reading\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         readConfigFileFrom: fileName IfFail: blk = ( |
             d <- bootstrap stub -> 'globals' -> 'dictionary' -> ().
             s <- ''.
            | 
            d: dictionary copyRemoveAll.
            s: readFileFrom: fileName IfFail: [|:e| ^ blk value: e].
            (s splitOn: '\n') do: [|:l|
              (l != '') && [l first != '#'] ifTrue: [| split |
                split: l splitOn: '='.
                split mapBy: [|:el| el shrinkwrapped].
                d at: split first Put: (split at: 1)]].
            d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: reading\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         readFileFrom: fileName IfFail: blk = ( |
            | 
            psyche readFileFrom: fileName IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setViaWizard = ( |
            | 
            'Enter values for the following keys: ' printLine.

            slotsToRead do: [|:str. newValue|
              (str, ' [', (str sendTo: self), ']: ') print.
              newValue: stdin readLine.
              newValue isEmpty 
                ifFalse: [ (str, ':') sendTo: self With: newValue].
            ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: introspection\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         slotsToRead = ( |
            | 
            ((reflect: self) asList
              filterBy: [|:s| s isAssignment not && s isParent not && s isMethod not])
              mapBy: [|:s| s key]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         writeTo: fileName IfFail: blk = ( |
            | 
            psyche write: asConfigFileString 
                  ToFile: fileName
                  IfFail: [^ blk value].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: status\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         version = ( |
            | modules psyche revision).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: status\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         version: v = ( |
            | modules psyche revision: v asString. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config - builtin\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'/vm/Self\')'
        
         vmBinary <- '/vm/Self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         welcomeMessage = ( |
            | 
            '\n\n\n\nW E L C O M E   T O   P S Y C H E\n\nVersion: ', version, '\n\n\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
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
