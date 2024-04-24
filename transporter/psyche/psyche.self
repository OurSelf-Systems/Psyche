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
         'Category: boot\x7fComment: This is the main entry point for booting\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         boot = ( |
            | 
            ensureLogging. 
            bootIsSuspended 
                ifTrue: [log info: 'Boot skipped with --suspendPsycheBootRoutine']
                 False: [mainBootRoutine]. 
            "startPrompt."
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
        
         config = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche config.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         default = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche config default.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche config default)'
        
         current <- bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fileSync* = bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'/objects\')'
        
         objectsDirectory <- '/objects'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'disabled\')'
        
         systemDesktop <- 'disabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'unsafe\')'
        
         systemDesktopAccessType <- 'unsafe'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'rsa\')'
        
         systemDesktopSSHKey <- 'rsa'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'1024x768\')'
        
         systemDesktopSize <- '1024x768'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         loadIfFail: blk = ( |
            | current: default copyReadFrom: '/worlds/psyche/psyche.conf' IfFail: [|:e| ^ blk value: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: development support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deprecated = ( |
            | log warn: 'Use of deprecated method'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fComment: This punches a hole in the firewall at port 443 to
allow for HTTPS access to system and worlds.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopFirewallHTTPS = ( |
            | 
            sys pfOpenPort: 443.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fComment: This starts a sshd for login as \'control\' user. 
Only allows port forwarding, no shell.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopFirewallSSH = ( |
            | 
            ensureSystemUser.
            saveSSHKey.
            sys startSSHD.
            sys pfOpenPort: 22.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fComment: This punches a hole in the firewall at port 5901 and 
exposes VNC without a password or encryption. 

DO NOT USE over the open internet!\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopFirewallUnsafe = ( |
            | 
            sys pfOpenPort: 5901.
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
            users: sys freebsdUsersIfFail: [logError value: 'Cannot determine FreeBSD users'].
            (users includes: userName) ifTrue: [logWarning value: '"', userName, '" user already exists.'].

            " Add system user "
            sys sh: 'pw useradd -n ', userName, ' -m -s /sbin/nologin ' IfFail: [logError: 'Cannot create user "', userName, '"'].
            " -s /sbin/nologin "
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         handleAlternateObjectRoot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche handleAlternateObjectRoot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         removeRestartFlag = ( |
            | 
            sys removeFile: restartFlagFilename
                       IfFail: [log error: 'Could not remove restart flag: ', restartFlagFilename].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         restartFlagExists = ( |
            | 
            sys readFileFrom: restartFlagFilename IfFail: [^ false].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         restartFlagFilename = '/RESTART_REQUESTED'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'handleAlternateObjectRoot' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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
        
         importWorldsZpoolIfFail: blk = ( |
             ignoreError.
            | 
            sys sh: '/sbin/zpool import' IfFail: [blk value].
            sys sh: '/sbin/zpool import worlds' IfFail: ignoreError.
            sys sh: 'ls /worlds' IfFail: [blk value].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initialCaddyConfig = ( |
            | 
             '
            %IP% {
                reverse_proxy http://127.0.0.1:6080
            }
            ' replace: '%IP%' With: sys local_ip4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: installation modules\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         installOS = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche installOS.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'installOS' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         value = ( |
             conf.
            | 

            'psyche.conf not found.' printLine.
            'Please answer these questions: ' printLine.

            conf: psyche config default copy setViaWizard.

            sys mkdir_p: '/worlds/psyche' IfFail: [
              log error: 'Could not create /worlds/psyche!'.
              ^ self].
            conf writeTo: '/worlds/psyche/psyche.conf' IfFail: [
              log error: 'Did not save conf file!'.
              ^ self].
            psyche config loadIfFail: [
              log error: 'Did not read conf file!'.
              ^ self].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jails = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche jails.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailsSnapshot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche jails jailsSnapshot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Comment: Give me an updated snapshot.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyUpdated = ( |
            | 
            copy update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailBaseDirectory = ( |
            | jails jailBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jails = bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         knownJails <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (time origin)'
        
         snapshotTimestamp <- time origin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         update = ( |
             c.
            | 
            knownJails: set copyRemoveAll.
            uuidsOfKnownJails do: [|:u|
              knownJails add: worlds jailRecord copyUpdatedFor: u].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> 'jailsSnapshot' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         uuidsOfKnownJails = ( |
            | 
            sys runningJails).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'jails' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
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
            worlds worldRecord runner ensureProperSetupOnBoot.
            welcomeMessage print.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: development support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         notYetImplemented = ( |
            | raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         openDesktop = ( |
            | 
            startX.
            startNoVNC.
            startCaddy.
            desktop isOpen 
             ifTrue: [desktop restartSuppressedFlag: false. 
                      desktop returnFromSnapshot]
              False: [desktop open].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: installation modules\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         prepareStorage = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche prepareStorage.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'prepareStorage' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         value = ( |
            | 
            'Storage (zpool worlds) cannot be found.' printLine.
            'Please create manually, then we will reboot.' printLine.
            '"exit" when finished.' printLine.
            sys sh: 'bash' IfFail: false.
            'Thanks, rebooting now.' printLine.
            sys reboot).
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
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         saveSSHKey = ( |
             f.
            | 
            sys sh: 'mkdir -p /home/system/.ssh' IfFail: [|:m| 
              log error: 'In "saveSSHKey" canoot make .ssh dir'. ^ self].

            sys write: config current systemDesktopSSHKey
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
               If: 'https'  = type Then: [ desktopFirewallHTTPS  ]
               Else: [
                    log error: 'Unknown desktop access method: ', type.
                    process this sleep: 10 * 1000].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: installation modules\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setupForDevelopment = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'setupForDevelopment' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche setupForDevelopment.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'setupForDevelopment' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         installSSHKeys = ( |
            | 
            sys sh: 'mkdir /root/.ssh' IfFail: [
              log error: 'Could not make /root/.ssh in installSSHKeys'. ^ self].
            sys sh: 'cp /worlds/psyche/.ssh/* /root/.ssh/' IfFail: [
              log error: 'Could not copy Git keys to /root/.ssh in installSSHKeys'. ^ self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'setupForDevelopment' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'setupForDevelopment' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setGitDetails = ( |
             od.
            | 
            od: psyche config current objectsDirectory.
            sys sh: 'cd ', od, ' ; git config user.name = "Russell Allen"'
              IfFail: [log error: 'Could not set git user.name in setGitDetails'].
            sys sh: 'cd ', od, ' ; git config user.email = "mail@russell-allen.com"'
              IfFail: [log error: 'Could not set git user.email in setGitDetails'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'setupForDevelopment' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'setupForDevelopment' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         value = ( |
            | installSSHKeys. setGitDetails. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startCaddy = ( |
             f.
            | 
            f = [log error: 'start Caddy failed'. ^ self ].
            sys caddy config: initialCaddyConfig.
            (sys caddy isRunningIfFail: f) ifFalse: [
               sys caddy startIfFail: f].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startNoVNC = ( |
            | 
            os command: 'chmod a+x /usr/local/libexec/novnc/utils/novnc_proxy'.
            os command: 'daemon -f /usr/local/libexec/novnc/utils/novnc_proxy --listen 6080 --vnc :5901'.
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
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startX = ( |
            | 
            os command: 'daemon /usr/local/bin/Xvnc :1 -geometry ', config current systemDesktopSize, ' -depth 24 -SecurityTypes None,TLSNone'.
            process this sleep: 2000.
            os command: 'DISPLAY=:1 daemon /usr/local/bin/ratpoison'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: users\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         addFreeBSDUser: u IfFail: blk = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: caddu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         caddy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys caddy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         config = ( |
             f.
             r.
            | 
            f: os_file openForReading: configFilename.
            r: f contents.
            f close.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         config: s = ( |
             f.
             r.
            | 
            f: os_file openForWriting: configFilename.
            f write: s.
            f close.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configFilename = '/usr/local/etc/caddy/Caddyfile'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         isRunningIfFail: fb = ( |
             r.
            | 
            r: sys sh: 'service caddy onestatus' ResultInMs: 100 IfFail: [^ fb value: 'Check for running Caddy failed.'].
            r shrinkwrapped != 'caddy is not running.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reloadConfigIfFail: fb = ( |
            | 
            sys sh: 'service caddy onereload' IfFail: [^ fb value: 'Reloading caddy config failed.']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startIfFail: fb = ( |
            | sys sh: 'service caddy onestart' IfFail: [^ fb value: 'Starting Caddy failed.']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopIfFail: fb = ( |
            | 
            sys sh: 'service caddy onestop' IfFail: [^ fb value: 'Stopping caddy failed.']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         validateConfig = ( |
            | sys sh: 'service caddy onereload --validate' IfFail: false. true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command with result\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         commandOutput = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'commandOutput' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys commandOutput.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'commandOutput' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (0)'
        
         exitCode <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'commandOutput' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'commandOutput' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         stderr <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'commandOutput' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         stdout <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'commandOutput' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wasSuccessful = ( |
            | exitCode = 0).
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
         'Category: system\x7fCategory: ifconfig\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         local_ip4 = ( |
             s.
            | 
            s: sh: 'ifconfig em0 | grep -w inet | awk \'{print $2}\'' ResultInMs: 100 IfFail: ''.
            s shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: mkdir\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mkdir_p: dir IfFail: blk = ( |
            | sh: 'mkdir -p ', dir IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: mounts\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mounter = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys mounter.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: exception handlers\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (raiseError)'
        
         handleMountFailed <- bootstrap stub -> 'globals' -> 'raiseError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: exception handlers\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (raiseError)'
        
         handleSourceNotFound <- bootstrap stub -> 'globals' -> 'raiseError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: exception handlers\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (raiseError)'
        
         handleTargetNotFound <- bootstrap stub -> 'globals' -> 'raiseError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mount = ( |
             c <- ''.
             o.
            | 
            c: c, 'mount '.
               type = '' ifFalse: [c: c, '-t ', type, ' '].
            options = '' ifFalse: [ c: c, '-o ', options, ' '].
            c: c, source, ' ', target.
            o: sys outputOfCommand: c
                           Timeout: 1000 "This shouldn't take more than 1 sec"
                         IfTimeout: [^ handleMountFailed value: 'Timed out'].
            o wasSuccessful ifFalse: [^ handleMountFailed value: 'Returned error: ', o exitCode asString].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         options <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         source <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         target <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounter' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         type <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: mounts\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mounts = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys mounts.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         current = ( |
            | 
            ((sys outputOfCommand: 'mount -p' Timeout: 10 * 1000 IfTimeout: raiseError) stdout shrinkwrapped splitOn: '\n')
              mapBy: [|:line| mountDescriptor copyOnMountOutput: line]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mountDescriptor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys mounts mountDescriptor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         attributes.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyOnMountOutput: st = ( |
             c.
             x.
            | 
            c: copy.
            x: st asTokensSeparatedByWhiteSpace.
            c source: x at: 0.
            c mountpoint: x at: 1.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mountpoint.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         source.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command with result\x7fComment: Attempts to run the os command commandSource
in a separate OS-level process. Redirects the
text output of the command into a temporary
file, and returns the contents of that file
after process has finished.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         outputOfCommand: commandSource Timeout: ms IfTimeout: fb = ( |
             endTime.
             exitCode.
             flag.
             outputBase.
             stderr.
             stdout.
            | 
              outputBase: os_file temporaryFileName.
              flag:     outputBase, '.flag'.
              exitCode: outputBase, '.exit'.
              stdout:   outputBase, '.stdout'.
              stderr:   outputBase, '.stderr'.

              " We don't timeout, if timeout is infinite in length "
              ms = infinity ifFalse: [endTime: time current addMsec: ms].

             [
              os command: '( ', commandSource, ' > ', stdout, ' 2> ', stderr, ' ; echo $? > ', exitCode, ' ; echo finished > ', flag, ' ) & ' IfFail: [|:e| ^ fb value: e ].
              [ ((ms != infinity) && [time current > endTime]) || (os_file exists: flag) ] whileFalse.
              " Return output of command "
              (os_file exists: flag) ifTrue: [| o |
                    o: commandOutput copy.
                    o exitCode: exitCode asFileContents shrinkwrapped asInteger.
                    o stdout: stdout asFileContents.
                    o stderr: stderr asFileContents.
                    o]
                False: [fb value: 'Timed out'].
            ] onReturn: [
              os unlink: stdout    IfFail: [].
              os unlink: stderr    IfFail: [].
              os unlink: flag      IfFail: [].
              os unlink: exitCode  IfFail: [].
            ]).
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
             errMsg = 'Could not run jls'.
             r.
            | 
            r: sh: 'jls -d name' ResultInMs: 100 IfFail: [log error: errMsg].
            r: (r splitOn: '\n') filterBy: [|:l| l != ''].
            r).
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
         'Category: support\x7fCategory: command with result\x7fComment: Only use interactively - ignores errors\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stdoutOfCommand: c = ( |
            | (outputOfCommand: c Timeout: 1000 IfTimeout: raiseError) stdout).
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
         'Category: system\x7fCategory: uuid\x7fComment: A 32 character string (so it fits in usernames)\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         uuidgen = ( |
            | 
            ((outputOfCommand: 'uuidgen' Timeout: 1000 IfTimeout: raiseError) 
              stdout shrinkwrapped splitOn: '-') joinUsing: '').
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: zfs\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         zfs = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys zfs.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         datasetsAndChildrenUnder: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs list -o name -rpH ', ds Timeout: 1000 IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            (o stdout shrinkwrapped splitOn: '\n') asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mountpointOfDataset: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs get -o value -H mountpoint ', ds Timeout: 1000 IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            o stdout shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
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
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         askForSlotName: str = ( |
             defaultValue.
             newValue <- ''.
            | 
            defaultValue: str sendTo: self.
            (str, ' [', defaultValue, ']: ') print.
            newValue: stdin preemptReadLine.
            newValue isEmpty 
                ifTrue: defaultValue
                 False: newValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: reading\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyReadFrom: fileName IfFail: blk = ( |
             c.
             d.
            | 
            d: readConfigFileFrom: fileName IfFail: [|:e| ^ blk value: e].
            c: copy.
            slotsToRead do: [|:s. defaultValue. fileValue. newValue |
              defaultValue: s sendTo: c.
              fileValue: (d at: s IfAbsent: defaultValue).
              fileValue = 'ask'   
                ifTrue: [newValue: askForSlotName: s]
                 False: [newValue: fileValue].
              (s, ':') sendTo: c With: newValue].
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
            sys readFileFrom: fileName IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setViaWizard = ( |
            | 
            'Enter values for the following keys: ' printLine.

            slotsToRead do: [|:str. newValue|
              askForSlotName: str.
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
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         writeTo: fileName IfFail: blk = ( |
            | 
            sys write: asConfigFileString 
               ToFile: fileName
               IfFail: [^ blk value].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         version = ( |
            | 
            modules psyche revision).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'/vm/Self\')'
        
         vmBinary <- '/vm/Self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         welcomeMessage = ( |
            | 
            '\n\n\n\nW E L C O M E   T O   P S Y C H E\n\nVersion: ', version, '\n\n\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worlds = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         getSnapshotOfWorldsStatus = ( |
            | worldsSnapshot copyUpdated).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailsBaseDirectory = '/jails'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         storeBaseDataset = 'worlds/store'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         storeBaseDirectory = ( |
            | sys zfs mountpointOfDataset: storeBaseDataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldRecord = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         consoleSocket = ( |
            | rawConsoleSocket ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyUpdatedFor: uuid = ( |
            | 
            (copy rawID: uuid) update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dataset = ( |
            | rawDataset ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         exists = ( |
            | rawExists ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         id = ( |
            | rawID ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         isAwake = ( |
            | rawIsAwake ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         isMountedForUse = ( |
            | rawIsMountedForUse ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailExists = ( |
            | rawJailExists ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailsBaseDirectory = ( |
            | worlds jailsBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawConsoleSocket.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawDataset.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawExists.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawID.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawIsAwake.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawIsMountedForUse.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawJailExists.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (nil)'
        
         rawTimestamp.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: running\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         runner = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord runner.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         baseDirectory = ( |
            | 
            jailsBaseDirectory, '/', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildTemplate = ( |
             mkdir.
            | 
            mkdir: [|:dir| sys sh: 'mkdir -p ', templateDirectory, dir].

            " Create directory "
            mkdir value: '/'.

            " Create structure "
            ('/dev' & '/var' & '/var/run' & '/libexec' & '/lib' & '/etc' & '/tmp' & '/objects') asVector do: mkdir.


            " Copy in needed files "
            sys sh: 'cp -r /vm ', templateDirectory, '/'.
            sys sh: 'tar -c /rescue/* | tar -xC ', templateDirectory, '/'.
            sys sh: 'mv ', templateDirectory, '/rescue ', templateDirectory, '/bin'.
            sys sh: 'cp -r /libexec/* ', templateDirectory, '/libexec/'.

            " resolv.conf "
            sys sh: 'cp /etc/resolv.conf ', templateDirectory, '/etc/resolv.conf'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         cleanTemplate = ( |
            | 
            sys sh: 'rm -rf ', templateDirectory. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyOnWorldRecord: wr = ( |
            | copy worldRecord: wr).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dataset = ( |
            | worldRecord dataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         destroyJail = ( |
            | 
            sys sh: 'umount ', baseDirectory, '/tmp'      IfFail: false.
            " /dev is mounted by jail(8) "
            sys sh: 'umount ', baseDirectory, '/dev'      IfFail: false.
            sys sh: 'umount ', baseDirectory, '/objects'  IfFail: false.
            sys sh: 'umount ', baseDirectory, '/'         IfFail: false.
            sys sh: 'rm -rf ', baseDirectory, '/'         IfFail: false.
            sys sh: 'rm ', selfSock                       IfFail: false.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dtachSocket = ( |
            | selfSock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureDtachSocketDirectory = ( |
            | 
            sys sh: 'mkdir -p ', sockDirectory. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Comment: I am sent on boot to ensure directories exist etc\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureProperSetupOnBoot = ( |
            | 
            cleanTemplate.
            ensureTemplate.
            ensureDtachSocketDirectory.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureTemplate = ( |
            | 
            (os_file exists: templateDirectory) ifFalse: [buildTemplate].
            (os_file exists: templateDirectory) ifFalse: raiseError.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hostName = ( |
            | id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         id = ( |
            | worldRecord id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailsBaseDirectory = ( |
            | worldRecord jailsBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         selfSock = ( |
            | sockDirectory, '/', id, '.sock').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setupJail = ( |
             m.
            | 
             " raiseError on errors - TODO - make proper handlers "
            sys mkdir_p: baseDirectory IfFail: raiseError.

            m: sys mounter copy.
            m type: 'nullfs'. m options: 'ro'. m source: templateDirectory. m target: baseDirectory. 
            m mount.

            m options: ''. m source: worldDirectory. m target: baseDirectory, '/objects'.
            m mount.

            m type: 'tmpfs'. m options: ''. m source: 'tmpfs'. m target: baseDirectory, '/tmp'.
            m mount.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sleep = ( |
            | stopJail. destroyJail. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sockDirectory = '/var/self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJail = ( |
             d.
             n.
             s.
            | 
            n: hostName.    
            d: baseDirectory.
            s: selfSock.
            sys sh: 'dtach -n \'', s, '\' jail -cmr path=\'', d, '\' name=\'', n, '\' host.hostname=\'', n,  '\' mount.devfs command=/vm/Self -s /objects/snapshot'. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopJail = ( |
            | 
            sys sh: 'jail -r ', hostName IfFail: true.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         templateDirectory = '/jailTemplate'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wake = ( |
            | 
            ensureTemplate. setupJail. startJail. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldDataset = ( |
            | dataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldDirectory = ( |
            | sys zfs mountpointOfDataset: worldDataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: worldRecord access\x7fComment: The world I will operate on.\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche worlds worldRecord)'
        
         worldRecord <- bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worlds = bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setDataset = ( |
            | 
            rawDataset: worlds storeBaseDataset, '/', id. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setExists = ( |
             a.
            | 
            a: (sys zfs datasetsAndChildrenUnder: worlds storeBaseDataset) asSequence.
            rawExists: (a filterBy: [|:ds| ds = dataset]) isEmpty not.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setIsAwake = ( |
            | rawIsAwake: isMountedForUse && jailExists. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setIsMountedForUse = ( |
            | 
            rawIsMountedForUse: sys mounts current anySatisfy: [|:md| 
              (md source = (sys zfs mountpointOfDataset: dataset)) && 
              [md mountpoint findSubstring: worlds jailsBaseDirectory IfPresent: true IfAbsent: false]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setJailExists = ( |
            | 
            rawJailExists: sys runningJails includes: id. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setTimestamp = ( |
            | rawTimestamp: time current. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sleep = ( |
             c.
             r.
            | 
            r: runner copyOnWorldRecord: self.
            r sleep. 
            c: copy update.
            c isAwake ifFalse: [c rawConsoleSocket: nil].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         timestamp = ( |
            | rawTimestamp ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: updating\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         update = ( |
            | 
            "Order is important"
            setDataset     setIsMountedForUse 
            setJailExists  setExists
            setIsAwake
            setTimestamp).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wake = ( |
             c.
             r.
            | 
            isAwake ifTrue: raiseError.
            r: runner copyOnWorldRecord: self.
            r wake.
            c: copy update.
            c isAwake ifTrue: [c rawConsoleSocket: r dtachSocket].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worlds = bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldsSnapshot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( |
             {} = 'Comment: I am a snapshot of the worlds known
to the system and their status. I should
be treated as immutable - if you think things
have changed then `update` me.\x7fModuleInfo: Creator: globals psyche worlds worldsSnapshot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Comment: Give me an updated snapshot.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyUpdated = ( |
            | 
            copy update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         knownWorlds <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (time origin)'
        
         snapshotTimestamp <- time origin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         storeBaseDataset = ( |
            | worlds storeBaseDataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         storeBaseDirectory = ( |
            | worlds storeBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         update = ( |
             c.
            | 
            knownWorlds: set copyRemoveAll.
            uuidsOfKnownWorlds do: [|:u|
              knownWorlds add: worlds worldRecord copyUpdatedFor: u].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         uuidsOfKnownWorlds = ( |
            | 
            ((sys zfs datasetsAndChildrenUnder: storeBaseDataset) asSequence
              filterBy: [|:ds| ds != storeBaseDataset])
              mapBy: [|:ds| ds slice: (storeBaseDataset size + 1) @ infinity]
            " +1 because we need to remove separator / ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldsSnapshot' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worlds = bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> ().
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
