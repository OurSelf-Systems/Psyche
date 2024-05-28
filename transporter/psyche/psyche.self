 '2024.05.23.01'
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
            " Prevent prompt.self from starting a second mainInputLoop "
            snapshotAction schedulerInitialMessages:
              snapshotAction schedulerInitialMessages copyFilteredBy: [|:m|
                'mainInputLoop' != m selector].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'2024.05.23.01\')\x7fVisibility: public'
        
         revision <- '2024.05.23.01'.
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
        
         config = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche config.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         askForSlotName: str Default: defaultValue = ( |
             newValue <- ''.
            | 
            (str, ' [', defaultValue, ']: ') print.
            newValue: stdin preemptReadLine.
            newValue isEmpty 
                ifTrue: defaultValue
                 False: newValue).
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
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fileSync* = bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'/objects\')'
        
         objectsDirectory <- '/objects'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         passwordHash <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'enabled\')'
        
         systemDesktop <- 'enabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'https\')'
        
         systemDesktopAccessType <- 'https'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'rsa\')'
        
         systemDesktopSSHKey <- 'rsa'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         loadIfFail: blk = ( |
            | current: default copyReadFrom: '/worlds/psyche/psyche.conf' IfFail: [|:e| ^ blk value: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setPasswordHash = ( |
             p.
            | 
            p: askForSlotName: 'password' Default: 'pass123'.
            (sys outputOfCommand: 'caddy hash-password -p ', p 
                         Timeout: 60000
                       IfTimeout: raiseError) stdout shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setViaWizard = ( |
             c.
            | 
            c: default copy.

            'Enter values for the following keys: ' printLine.

            c slotsToRead do: [|:str. newValue|
              str = 'passwordHash' 
                ifTrue: [c passwordHash: setPasswordHash]
                 False: [newValue: askForSlotName: str Default: str sendTo: c.
                         (str, ':') sendTo: c With: newValue].
            ].

            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
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
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopMessage = ( |
            | 
            'You can access the desktop for this world at:
                https://', sys caddy hostname, '/control/
            with the username \'control\' and the password chosen at installation.


            ').
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
            sys sh: '/sbin/zpool import > /dev/null 2>&1' IfFail: [blk value].
            sys sh: '/sbin/zpool import worlds > /dev/null 2>&1' IfFail: ignoreError.
            sys sh: 'ls /worlds > /dev/null 2>&1' IfFail: [blk value].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initialCaddyConfig = ( |
             c.
            | 
            c: sys caddy caddyConfigPrototype copy.
            c registerPath: '/control/'
                  ForProxy: 'http://127.0.0.1:6080'
                  Username: 'control'
              PasswordHash: config current passwordHash.
            c).
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
        
         message = '

********************************************************************
*                                                                  *
    A config file (/worlds/psyche/psyche.conf) cannot be found.                   

    The system will now ask you some questions to set up an
    initial config.


*                                                                  *
********************************************************************

'.
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
             e.
            | 
            e: [|:m|
              log error: m.
              '\n\n\nEMERGENCY SHELL\n\n\n' print.
              sys sh: 'bash -i' IfFail: [
                  '\n\nAll out oF ideas...\n\n' print.
                  sys shutdown].
              sys shutdown].

            message print.

            conf: psyche config setViaWizard.

            sys mkdir_p: '/worlds/psyche' IfFail: [e: 'Could not create /worlds/psyche!'].
            conf writeTo: '/worlds/psyche/psyche.conf' IfFail: [e: 'Did not save conf file!'].
            psyche config loadIfFail: [e: 'Did not read conf file!'].

            '\n\nThank you. We will now continue based on the config.\n\n\n' print.

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
        
         message = '

**************************************************************
*                                                            *
    Storage (zpool worlds) cannot be found.                   

    Please create this manually, then \"exit\" when finished.
    If you are running Psyche on a virtual machine, or with
    a single hard drive, then your command is likely to be
    
    > zpool create worlds /dev/ada0

*                                                            *
**************************************************************

'.
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
            message print.
            sys sh: 'bash -i' IfFail: false.
            sys sh: 'ls /worlds > /dev/null 2>&1' IfFail: [
                '\n\nStill cannot import zpool, rebooting...' printLine.
                sys reboot].
            self).
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
            os command: 'chmod a+x /opt/noVNC/utils/novnc_proxy'.
            os command: 'daemon -f /opt/noVNC/utils/novnc_proxy --listen 6080 --vnc :5901'.
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
            os command: 'daemon /usr/local/bin/Xvnc :1 -geometry ', systemDesktopSize, ' -depth 24 -SecurityTypes None,TLSNone'.
            "Pause until Xvnc has started "
            [ 0 = (os command: 'ls /tmp/.X11-unix/X1 >/dev/null 2>&1 ')] whileFalse.
            os command: 'daemon /usr/local/bin/vncconfig -display :1 -nowin'.
            os command: 'daemon autocutsel'.
            [process this sleep: 2000].
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
         'Category: system\x7fCategory: caddy\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         caddy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys caddy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         caddyConfigPrototype = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys caddy caddyConfigPrototype.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configFooter = ( |
            | '\n}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configHeader = ( |
             h.
            | 
            h: '
            http://%IP% {
              redir https://%IP%{uri} permanent
            }

            %IP% {
            '.
            h: h replace: '%IP%' With: sys caddy hostname.
            h).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy proxies: proxies copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deregisterPath: path = ( |
            | 
            proxies removeKey: path IfAbsent: true.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'Category: proxy\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         proxies <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'Category: proxy\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         proxyEntryPrototype = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> 'proxyEntryPrototype' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys caddy caddyConfigPrototype proxyEntryPrototype.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> 'proxyEntryPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> 'proxyEntryPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         passwordHash <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> 'proxyEntryPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         path <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> 'proxyEntryPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         proxy <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> 'proxyEntryPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         username <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerPath: path ForProxy: proxy Username: user PasswordHash: ph = ( |
            | 
            proxies at: path
                   Put: (
            (((proxyEntryPrototype copy
                    path: path)
                   proxy: proxy)
                username: user)
            passwordHash: ph).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         renderConfig = ( |
             b.
             s.
            | 
            s: ''.
            b: '    handle_path %PATH%* {
                  reverse_proxy %PROXY%
                }
                basicauth %PATH%* bcrypt %PATH% {
                  %USER% %HASH%
                }
            '.

            proxies do: [|:p. c|
              c: b copy.
              c: c replace: '%PATH%' With: p path.
              c: c replace: '%PROXY%' With: p proxy.
              c: c replace: '%USER%' With: p username.
              c: c replace: '%HASH%' With: p passwordHash.
              s: s, c].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         renderMeta = ( |
             s.
            | 
            s: ''.
            proxies do: [|:p|
              s: s, '# ', p path, ' ', p proxy, ' ', p username, ' ', p passwordHash, '\n'].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         toString = ( |
            | 
            renderMeta, configHeader, renderConfig, configFooter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         config = ( |
            | parseConfig: text_config).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         config: caddyConfig = ( |
            | text_config: caddyConfig toString. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configFilename = '/usr/local/etc/caddy/Caddyfile'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: api\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configSocket = '/var/run/caddy/caddy.sock'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deregisterPath: path = ( |
             n.
             o.
            | 
            o: config.
            n: config copy.
            n deregisterPath: path.
            isRunningIfFail: [raiseError].
            config: n.
            validateConfig ifFalse: [config: o. raiseError].
            reloadConfigIfFail: [raiseError].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         emptyConfig = ( |
             b.
            | 
            b: '
            %IP% {
                # MATCHES #
            }
            '.
            b: b replace: '%IP%' With: hostname.
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: api\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         getConfigViaAPI: path = ( |
            | sys stdoutOfCommand: 'curl -GET --unix-socket ', configSocket, ' http://127.0.0.1/config/', path).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: hostname\x7fComment: This should be one of three types:
- localhost, ie 127.0.0.1 (assuming ip4)
- local ip, eg 192.168.1.114
- global domain name set in psyche.conf\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hostname = ( |
            | 
            localhost = rawHostname ifTrue: [rawHostname: sys local_ip4]. rawHostname).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: hostname\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hostname: hn = ( |
            | rawHostname: hn. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         isRunningIfFail: fb = ( |
             r.
            | 
            " Sometimes this takes a while"
            r: sys sh: 'service caddy onestatus' ResultInMs: 10000 IfFail: [^ fb value: 'Check for running Caddy failed.'].
            r shrinkwrapped != 'caddy is not running.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: hostname\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         localhost = '127.0.0.1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parseConfig: c = ( |
             cc.
            | 
            cc: caddyConfigPrototype copy.
            (c splitOn: '\n') do: [|:l|
             (l isEmpty not && [l first = '#']) ifTrue: [|s|
                s: l splitOn: ' '.
                cc registerPath: (s at: 1)
                       ForProxy: (s at: 2)
                       Username: (s at: 3)
                   PasswordHash: (s at: 4)]].
            cc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: hostname\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche sys caddy localhost)'
        
         rawHostname <- psyche sys caddy localhost.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerPath: path ForProxy: proxy Username: user PasswordHash: ph = ( |
             n.
             o.
            | 
            o: config.
            n: config copy.
            n registerPath: path ForProxy: proxy Username: user PasswordHash: ph.
            isRunningIfFail: [raiseError].
            config: n.
            validateConfig ifFalse: [config: o. raiseError].
            reloadConfigIfFail: [raiseError].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reloadConfigIfFail: fb = ( |
            | 
            sys sh: 'service caddy onereload' IfFail: [^ fb value: 'Reloading caddy config failed.']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         resetConfig = ( |
            | 
            config: emptyConfig.
            (isRunningIfFail: raiseError) ifTrue: [startIfFail: raiseError].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: api\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setConfigViaAPI: path Config: c = ( |
            | sys stdoutOfCommand: 'curl -POST --unix-socket ', configSocket, ' http://127.0.0.1/config/', path, ' -d ', c. self).
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
         'Category: config\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         text_config = ( |
            | configFilename asFileContents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         text_config: s = ( |
             f.
             r.
            | 
            f: os_file openForWriting: configFilename.
            f write: s.
            f close.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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
         'Category: system\x7fCategory: fetch\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fetch = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'fetch' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys fetch.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         out <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         run = ( |
             o.
            | 
            o: sys outputOfCommand: 'fetch -o ', out, ' ', url
                           Timeout: 60 * 60 * 1000
                         IfTimeout: raiseError.
            o exitCode != 0 ifTrue: raiseError.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         url <- ''.
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
            [
              s: sh: 'ifconfig em0 | grep -w inet | awk \'{print $2}\'' ResultInMs: 1000 IfFail: ''.
              s: s shrinkwrapped.
              '' = s
            ] whileTrue: [ log info: 'Cannot determine ip4 address. Retrying.'.].
            s).
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
         'Category: umount\x7fComment: FreeBSD specific.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ebusy = 16.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'Category: umount\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         umountForcedIfFail: fb = ( |
            | 
            sys sh: 'umount -F ', mountpoint IfFail: [|:e| ^ fb value: e].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'mounts' -> 'mountDescriptor' -> () From: ( | {
         'Category: umount\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         umountIfFail: fb = ( |
            | 
            sys sh: 'umount ', mountpoint IfFail: [|:e| ^ fb value: e].
            self).
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
            sh: 'pfctl -qnf /etc/pf.conf && pfctl -q -F all -f /etc/pf.conf' IfFail: [
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
            | 
            os outputOfCommand: cmd Timeout: ms IfFail: [blk value: 'Cmd ', cmd, ' failed']).
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
         'Category: system\x7fCategory: files and directories\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         touch: fn IfFail: blk = ( |
            | outputOfCommand: 'touch ', fn Timeout: 1000 IfTimeout: blk).
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
        
         createDataset: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs create ', ds Timeout: 1000 IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         createSnapshotOf: ds Named: sn = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs snapshot ', ds, '@', sn Timeout: 1000 IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         datasetExists: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs list -o name -rpH ', ds Timeout: 1000 IfTimeout: raiseError.
            o exitCode = 0
               ifTrue: true
                False: ['dataset does not exist' = ((o stderr splitOn: ':') at: 1)shrinkwrapped
                           ifTrue: false
                            False: raiseError]).
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
        
         destroyDataset: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs destroy -r ', ds Timeout: 1000 IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         duplicateDataset: ds To: nds = ( |
             o.
             s.
            | 
            s: sys uuidgen.
            createSnapshotOf: ds Named: s.
            o: sys outputOfCommand: 'zfs send ', ds, '@', s, ' | zfs recv ', nds Timeout: 1000 IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            self).
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
         'Category: desktop\x7fComment: Default - should resize automatically to
browser window\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'1024x768\')'
        
         systemDesktopSize <- '1024x768'.
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
            '\n\n\n\nW E L C O M E   T O   P S Y C H E\n\nVersion: ', version, '\n\n\n', 
            'This is the console for the Control world.\n', desktopMessage).
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
        
         consolePasswordHash = ( |
            | rawMetadata consolePasswordHash ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         consoleSocket = ( |
            | rawConsoleSocket ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: URLs\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         consoleURL = ( |
            | 'https://', sys caddy hostname, '/', id, '/console').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: URLs\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyConsoleURLToClipboard = ( |
            | ui2_textBuffer contents: consoleURL. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dataset = ( |
            | rawDataset ifNil: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         delete = ( |
            | 
            isAwake ifTrue: raiseError.
            sys zfs destroyDataset: dataset.
            updatedRecord).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         duplicate = ( |
             nds.
             nid.
             r.
            | 
            nid: sys uuidgen.
            nds: worlds storeBaseDataset, '/', nid.
            sys zfs duplicateDataset: dataset To: nds.
            sys touch: (sys zfs mountpointOfDataset: nds), '/metadata' IfFail: raiseError.
            r: copy.
            r rawID: nid.
            r update.
            " Random password for console "
            r password: sys uuidgen.
            r update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         duplicateEmpty = ( |
             ds.
             nid.
             r.
            | 
            nid: sys uuidgen.
            ds: worlds storeBaseDataset, '/', nid.
            sys zfs createDataset:  ds.
            sys touch: (sys zfs mountpointOfDataset: ds), '/metadata' IfFail: raiseError.
            r: copy.
            r rawID: nid.
            r update.
            " Random password for console "
            r password: sys uuidgen.
            r update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         duplicateURL: url = ( |
             fn.
             wr.
            | 
            wr: duplicateEmpty.
            fn: os_file temporaryFileName, '.tar.xz'.
            ((sys fetch url: url) out: fn) run.
            (url slice: -7 @ infinity) = '.tar.xz' ifTrue: [
                sys sh: 'tar -xf ', fn, ' -C ', 
                      (sys zfs mountpointOfDataset: wr dataset).
                sys removeFile: fn IfFail: raiseError.
            ] False: raiseError. "Don't know this type"
            wr).
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
         'Category: internal\x7fCategory: metadata\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         metadataFilename = ( |
            | (sys zfs mountpointOfDataset: dataset), '/metadata').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: metadata\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         metadataPrototype = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'metadataPrototype' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord metadataPrototype.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'metadataPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         consolePasswordHash <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'metadataPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fileSync* = bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'metadataPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'metadataPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shortName <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: setting\x7fComment: worldRecords are immutable - will return a new object\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         password: p = ( |
             h.
            | 
            h: (sys stdoutOfCommand: 'caddy hash-password -p ', p) shrinkwrapped.
            rawMetadata consolePasswordHash: h.
            rawMetadata writeTo: metadataFilename IfFail: raiseError.
            copy update).
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
         'Category: internal\x7fCategory: metadata\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche worlds worldRecord metadataPrototype)'
        
         rawMetadata <- bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'metadataPrototype' -> ().
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

            sharedDirs do: mkdir.

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
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyInBinary: path = ( |
             s.
            | 
            sys sh: 'cp ', path, ' ', templateDirectory, '/bin'.
            s: sys stdoutOfCommand: 'ldd ', path.
            (s splitOn: '\n') do: [|:l. p|
              p: (l splitOn: '=>').
              p size > 1 ifTrue: [
                p: ((l splitOn: '=>') at: 1) shrinkwrapped.
                p: ((p splitOn: ' ') at: 0) shrinkwrapped.
                sys sh: 'cp ', p, ' ', templateDirectory, '/lib']].
            self).
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
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deregisterTtydWithCaddy = ( |
            | 
            psyche sys caddy deregisterPath: '/', id, '/console/'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         destroyJail = ( |
             c.
             fb.
             ignore = bootstrap stub -> 'globals' -> 'true' -> ().
             umount.
             umountForced.
            | 
            fb: raiseError.
            c: sys mounts current.
            umount: [|:mp|
             c findFirst: [|:e| 
                       " /rw offset is caused by mfbsd "
                       e mountpoint = ('/rw', baseDirectory, mp)]
               IfPresent: [|:e| e umountIfFail: [
                                "Try again"
                                process this sleep: 10.
                                e umountIfFail: fb]]
                IfAbsent: ignore].

            sharedDirs do: umount.

            umount value: '/tmp'.
            umount value: '/objects'.

            " /dev was mounted by jail(8) "
            umount value: '/dev'.

            " Wait for all umounts to have effect "
            [
              sys mounts current
                anySatisfy: [|:e| e mountpoint matchesPattern: '/rw', baseDirectory, '/*']
            ] whileTrue.

            " Wait until nothing is using the filesystem, "
            [|o| 
            o: sys stdoutOfCommand: 'fuser ', baseDirectory.
            o shrinkwrapped isEmpty
            ] whileFalse.

            " Not / as needs to be matched in umount block with mountpoint"
            umount value: ''.

            (sys sh: 'ls ', baseDirectory, '/' IfFail: 0) = 0
              ifFalse: [sys sh: 'rmdir ', baseDirectory, '/' IfFail: fb].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: settings\x7fComment: In jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dtachSocket = ( |
            | sockDirectory, '/', id, '.sock').
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
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureTtydDirectories = ( |
            | 
            sys sh: 'mkdir -p ', ttydPidDirectory.
            sys sh: 'mkdir -p ', ttydSockDirectory.
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
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailOptions = ( |
             l.
            | 
            l: (sys stdoutOfCommand: 'ls ', baseDirectory, '/objects') splitOn: '\n'.
            (l includes: 'snapshot') ifTrue: [^ '-s /objects/snapshot'].
            (l includes: 'build.self') ifTrue: [^ '-f /objects/build.self'].
            '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailsBaseDirectory = ( |
            | worldRecord jailsBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Comment: From when we copied files into
template rather than mounted them\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         old = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'old' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord runner old.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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

            " dtach "
            copyInBinary: '/usr/local/bin/dtach'.

            " resolv.conf "
            sys sh: 'cp /etc/resolv.conf ', templateDirectory, '/etc/resolv.conf'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         destroyJail = ( |
             fb.
            | 
            fb: [raiseError].
            sys sh: 'umount ', baseDirectory, '/tmp'      IfFail: fb.
            " /dev is mounted by jail(8) "
            sys sh: 'umount ', baseDirectory, '/dev'      IfFail: fb.
            sys sh: 'umount ', baseDirectory, '/objects'  IfFail: fb.
            sys sh: 'umount ', baseDirectory, '/'         IfFail: fb.
            sys sh: 'rmdir ', baseDirectory, '/'         IfFail: fb.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJail = ( |
             d.
             n.
             s.
            | 
            n: hostName.    
            d: baseDirectory.
            s: dtachSocket.
            sys sh: 'jail -cmr path=\'', d, '\' name=\'', n, '\' mount.devfs devfs_ruleset=5 host.hostname=\'', n,  '\' command=/bin/dtach -n \'', s, '\' /vm/Self -s /objects/snapshot'. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopJail = ( |
            | 
            sys sh: 'jail -r ', hostName IfFail: true.
            " Waiting until nothing is using the filesystem,
              ie untl the jail has properly stopped.
            "
            [|o| 
            o: sys stdoutOfCommand: 'fuser ', baseDirectory.
            o shrinkwrapped isEmpty
            ] whileFalse.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerTtydWithCaddy = ( |
            | 
            psyche sys caddy 
               registerPath: '/', id, '/console/'
                   ForProxy: 'unix/', ttydSock
                   Username: 'console'
               PasswordHash: worldRecord consolePasswordHash.
            self).
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

            sharedDirs do: [|:d|
              m type: 'nullfs'. m options: 'ro'. m source: d. m target: baseDirectory, d. 
              m mount].

            m options: ''. m source: worldDirectory. m target: baseDirectory, '/objects'.
            m mount.

            m type: 'tmpfs'. m options: ''. m source: 'tmpfs'. m target: baseDirectory, '/tmp'.
            m mount.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sharedDirs = ( |
            | 
            (
            '/bin' & '/lib' & '/libexec' & '/sbin' &
            '/usr/bin' & '/usr/sbin' & '/usr/lib' & '/usr/libexec' & '/usr/share' & '/usr/libdata' & 
            '/usr/local/bin' & '/usr/local/sbin' & '/usr/local/lib' & '/usr/local/libexec' & '/usr/local/share' & '/usr/local/libdata' & '/usr/local/etc' & 
            '/vm' & '/etc'
            ) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sleep = ( |
            | 
            stopJail. 
            destroyJail. 
            stopTtyd. 
            deregisterTtydWithCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fComment: In jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sockDirectory = '/tmp'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sockDirectoryOutside = ( |
            | baseDirectory, sockDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJail = ( |
            | 
            startJailWithSelfOptions: jailOptions).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJailWithSelfOptions: options = ( |
             d.
             n.
             s.
            | 
            n: hostName.    
            d: baseDirectory.
            s: dtachSocket.
            sys sh: 'jail -cmr path=\'', d, '\' name=\'', n, '\' mount.devfs vnet=new devfs_ruleset=5 host.hostname=\'', n,  '\' command=/usr/local/bin/dtach -n \'', s, '\' /vm/Self ', options. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startTtyd = ( |
             cmd.
             daemon.
             dtach.
             ttyd.
            | 
            ensureTtydDirectories.
            dtach: 'dtach -a ', baseDirectory, dtachSocket, ' '.
            ttyd: 'ttyd -W -i ', ttydSock, ' '.
            daemon: 'daemon -f -p ', ttydPid, ' '.
            cmd: daemon, ttyd, dtach.
            sys sh: cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopJail = ( |
            | 
            sys sh: 'jail -r ', hostName IfFail: true.
            " Waiting until nothing is using the filesystem,
              ie untl the jail has properly stopped.
            "
            [|o| 
            o: sys stdoutOfCommand: 'fuser ', baseDirectory.
            o shrinkwrapped isEmpty
            ] whileFalse.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopTtyd = ( |
             c.
             f.
            | 
            f: ttydPid asInputFileIfError: [^ self].
            c: f contents.
            f close.
            sys sh: 'kill ', c IfFail: false.
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
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydPid = ( |
            | 
            ttydPidDirectory, id, '.pid').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydPidDirectory = '/var/ttyd/pid/'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydSock = ( |
            | 
            ttydSockDirectory, id, '.sock').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydSockDirectory = '/var/ttyd/sock/'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wake = ( |
            | 
            ensureTemplate. 
            setupJail. 
            startJail. 
            startTtyd.
            registerTtydWithCaddy.
            self).
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
            | 
            rawExists: sys zfs datasetExists: dataset. self).
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
            (sys zfs datasetExists: dataset) ifFalse: [rawIsMountedForUse: false. ^ self].
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
         'Category: accessing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shortName = ( |
            | rawMetadata shortName ifNil: raiseError).
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
            setIsAwake     updateMetadata
            setTimestamp).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: internal\x7fCategory: metadata\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         updateMetadata = ( |
            | 
            (sys zfs datasetExists: dataset) ifFalse: [^ self].
            rawMetadata: metadataPrototype 
                    copyReadFrom: metadataFilename
                          IfFail: raiseError. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         updatedRecord = ( |
            | copy update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         updatedRecordFor: uuid = ( |
            | (copy rawID: uuid) update).
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
              knownWorlds add: worlds worldRecord updatedRecordFor: u].
            snapshotTimestamp: time current.
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
