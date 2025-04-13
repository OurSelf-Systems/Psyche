 '2025.02.12.01'
 '
Copyright 2022-2024 OurSelf-Systems.
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
Copyright 2022-2024 OurSelf-Systems.
See the LICENSE,d file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022-2024 OurSelf-Systems.
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
            [ boot ]. " To make it easier to find "
            " Prevent prompt.self from starting a second mainInputLoop "
            snapshotAction schedulerInitialMessages:
              snapshotAction schedulerInitialMessages copyFilteredBy: [|:m|
                'mainInputLoop' != m selector].
            psyche gui initializePrototypes.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'2025.02.12.01\')\x7fVisibility: public'
        
         revision <- '2025.02.12.01'.
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
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         clearScreen = '\x1bc'.
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
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'automatic\')'
        
         hostname <- 'automatic'.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'disabled\')'
        
         tailscale <- 'disabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         tailscale_auth_key <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         unixConsolePasswordHash <- ''.
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
        
         setPasswordHash: c = ( |
             p.
            | 
            p: askForSlotName: 'password' Default: 'pass123'.
            c passwordHash: sys caddy hashPassword: p IfFail: raiseError.
            c unixConsolePasswordHash: 
                (sys outputOfCommand: 'echo -n \'', p, '\' | openssl passwd -6 -stdin' 
                           IfTimeout: raiseError) stdout shrinkwrapped.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setViaWizard = ( |
             c.
            | 
            c: default copy.

            'Enter values for the following keys: ' printLine.

            wizardSlots do: [|:str. newValue|
              case
                if: str = 'passwordHash'  Then: [setPasswordHash: c ]
                If: str = 'unixConsolePasswordHasH'  Then: ["Ignore - set with passwordHash" self]
                Else: [newValue: askForSlotName: str Default: str sendTo: c.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'config' -> () From: ( | {
         'Category: wizard\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wizardSlots = ( |
            | ('hostname' & 'passwordHash') asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         consoleLogFile = '/var/log/console.log'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: daemons\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         daemons = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche daemons.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         caddy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche daemons caddy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         abortHandlingProcess = ( |
            | running abortIfLive. running: deadProcess. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deadProcess = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> 'deadProcess' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche daemons caddy deadProcess.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureRunning = ( |
            | 
            running isAlive ifFalse: [startRunning]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         handleLoop = ( |
            | 
            [process this sleep: 1000.
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hup = ( |
            | abortHandlingProcess ensureRunning).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche daemons prototype parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: shared\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reload = ( |
            | stop. start. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (log dispatcher deadProcess)'
        
         running <- bootstrap stub -> 'globals' -> 'log' -> 'dispatcher' -> 'deadProcess' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         start = ( |
            | 
            ensureRunning.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: loop manager\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startRunning = ( |
            | 
            running: (
              process copySend: (message copy receiver: self Selector: 'handleLoop')
                  CauseOfBirth: 'caddy daemon') resume. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stop = ( |
            | abortHandlingProcess. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         transactor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'transactor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche traits transactor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: shared\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sync* = bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'transactor' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'caddy' -> () From: ( | {
         'Category: shared\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         prototype = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche daemons prototype.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reload = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         start = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'daemons' -> 'prototype' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stop = ( |
            | self).
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
            ',
            (sys tailscale isUp ifTrue: ['or\n    https://', (sys tailscale fullyQualifiedDomainNameIfFail: [
                                                     log warn: 'Couldn\'t find Tailscale FQN'.
                                                     'unknown.example.com']), '/control/'] False: ''),
            '\nwith the username \'control\' and the password chosen at installation.\n\n\n').
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
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         gui = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         importerMorph = bootstrap define: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals columnMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui importerMorph.

CopyDowns:
globals columnMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui importerMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         addNote: m = ( |
            | 
            safelyDo: [
              addMorphLast: labelMorph copy label: m].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildExplanation = ( |
            | labelMorph copyLabel: 'URL of Self world to import:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildInput = ( |
             em.
            | 
            em: ((editorMorph copy borderWidth: 4) setString: defaultValue) selectAll.
            em addRole: editorRole.
            ((frameMorph copy frameStyle: frameMorph insetBezelStyle)
              color: paint named: 'outlinerGray')
              addMorphLast: em).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildOKButton = ( |
             b.
             rm.
            | 
            b: ui2Button copy label: 'Import'.
            b target: self.
            b scriptBlock: [target importAction].
            b addRole: okButtonRole.

            rm: rowMorph copyTransparent.
            rm addMorphLast: transparentSpacerMorph copy beFlexibleHorizontally.
            rm addMorphLast: b.
            rm).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildSpacer = ( |
            | 
            transparentSpacerMorph copyV: 8).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         defaultValue = 'https://ourself.io/downloads/worlds/latest.psyche'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         editorRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> 'editorRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui importerMorph parent editorRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> 'editorRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         greyButton: bool = ( |
            | 
            morphsWithRole: okButtonRole 
                        Do: [|:m| m isGrayedOut: bool]
                  IfAbsent: raiseError.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         importAction = ( |
            | 
            "Import From URL"
            greyButton: true.
            (message copy receiver: self
                          Selector: 'importProcess') fork.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: model\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         importProcess = ( |
             reporter.
             wr.
            | 
            reporter: [|:m| addNote: m].
            addNote: 'Started to import...'.
            wr: psyche worlds worldRecord duplicateURL: url ReportingTo: reporter.
            addNote: 'Finished importing. Please refresh System Manager.'.
            greyButton: false.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initializePrototype = ( |
             cm.
            | 
            removeAllMorphs.
            color: paint named: 'outlinerGray'.
            beShrinkWrapVertically beFlexibleHorizontally.
            leftJustify.
            borderWidth: 8.
            (  buildExplanation &
               buildSpacer      &
               buildInput       &
               buildSpacer      &
               buildOKButton
            ) asSequence do: [|:m| addMorphLast: m].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         okButtonRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> 'okButtonRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui importerMorph parent okButtonRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> 'okButtonRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'columnMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setWindowLabel = ( |
            | 
            "Change closest window (in case nested).
             If not in windowMorph, ignore."
            ownersWithRole: psyche gui windowMorph windowRole 
                        Do: [|:m| m windowLabel: 'Psyche Importer'. ^ self]
                  IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> 'parent' -> () From: ( | {
         'Category: model\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         url = ( |
             u.
            | 
            morphsWithRole: editorRole 
                        Do: [|:m| u: m contentsString]
                  IfAbsent: raiseError.
            u).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'importerMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | psyche gui importerMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> () From: ( | {
         'Category: building\x7fComment: Rebuilds the morphs.
Needed because transporter doesn\'t always
play well with deeply nested morph structures.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initializePrototypes = ( |
            | 
            windowMorph initializePrototype.
            managerMorph initializePrototype.
            worldRecordMorph initializePrototype.
            importerMorph initializePrototype.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         managerMorph = bootstrap define: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals columnMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui managerMorph.

CopyDowns:
globals columnMorph. copyRemoveAllMorphs 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui managerMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildMenuBar = ( |
             mb.
            | 
            mb: rowMorph copyTransparent.
            mb addMorphLast:
              (((ui2Button copy label: 'Refresh')
                 scriptBlock: [target refresh])
                 target: self).
            mb addMorphLast: transparentSpacerMorph copyH: 6.
            mb addMorphLast:
              (((ui2Button copy label: 'Import...')
                 scriptBlock: [event sourceHand attach:
                                 psyche gui windowMorph copyWrapping: psyche gui importerMorph copy])
                 target: self).
            mb addMorphLast: transparentSpacerMorph copyH: 6.
            mb addMorphLast:
              (((ui2Button copy label: 'Open Unix Terminal')
                 scriptBlock: [event sourceHand attach:
                                  terminalEmulator terminalMorph copy])
                 target: self).
            mb addMorphLast: transparentSpacerMorph copyH: 6.
            mb addMorphLast:
              (((ui2Button copy label: 'Shutdown')
                 scriptBlock: [psyche sys shutdown])
                 target: self).
            mb addMorphLast: transparentSpacerMorph copyH: 6.
            mb addMorphLast:
              (((ui2Button copy label: 'Reboot')
                 scriptBlock: [psyche sys reboot])
                 target: self).
            mb addMorphLast: transparentSpacerMorph copy.
            mb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         horizontalRule = ( |
            | 
            spacerMorph copyV: 2 Color: paint named: 'gray').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initializePrototype = ( |
             cm.
            | 
            removeAllMorphs.
            color: paint named: 'outlinerGray'.
            beShrinkWrapVertically beFlexibleHorizontally.
            borderWidth: 0.
            addMorphLast: buildMenuBar.
            addMorphLast: horizontalRule.
            addRole: managerRole.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         managerRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> 'managerRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui managerMorph parent managerRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> 'managerRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'columnMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         refresh = ( |
            | 
            morphsWithRole: worldRecordRole 
                        Do: [|:m| removeMorph: m]
                  IfAbsent: true.
            (psyche worlds updatedSystemRecord knownWorlds 
              asSequence sortBy: (|
               element: e1 Precedes: e2 = (e1 shortName < e2 shortName)
             |))
            do: [|:w. m |
              m: psyche gui worldRecordMorph copyOn: w.
              m addRole: worldRecordRole.
              addMorphLast: m].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setWindowLabel = ( |
            | 
            "Change closest window (in case nested).
             If not in windowMorph, ignore."
            ownersWithRole: psyche gui windowMorph windowRole 
                        Do: [|:m| m windowLabel: 'Psyche System Manager'. ^ self]
                  IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldRecordRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> 'worldRecordRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui managerMorph parent worldRecordRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'managerMorph' -> 'parent' -> 'worldRecordRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         windowMorph = bootstrap define: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals frameMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui windowMorph.

CopyDowns:
globals frameMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> () From: ( | {
         'Category: Window Morph State\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (morph)'
        
         frameHolderForCollapsed <- bootstrap stub -> 'globals' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui windowMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildInsetFrame = ( |
             rm.
            | 
            rm: frameMorph copy.
            rm color: paint named: 'outlinerGray'.
            rm frameStyle: rm insetBezelStyle.
            rm borderWidth: 3.
            rm beShrinkWrapVertically beFlexibleHorizontally.
            rm addRole: contentMorphHolderRole.
            rm).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         closeButtonOn: m = ( |
             b.
            | 
            b: ui2Button copy.
            b label: 'X'.
            b target: m.
            b scriptBlock: [target animatedDelete].
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: expand\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         collapse: etc = ( |
             cm.
            | 
            cm: morphs first.
            frameHolderForCollapsed: cm morphs last.
            cm removeMorph: frameHolderForCollapsed.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         contentMorphHolderRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'contentMorphHolderRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui windowMorph parent contentMorphHolderRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'contentMorphHolderRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: content\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         contentsMorph = ( |
            | 
            morphsWithRole: contentMorphHolderRole 
                        Do: [|:m | ^ m morphs first]
                  IfAbsent: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: content\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         contentsMorph: cm = ( |
            | 
            morphsWithRole: contentMorphHolderRole 
                        Do: [|:m | m addMorph: cm. ^ self]  
                  IfAbsent: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyWrapping: c = ( |
             m.
            | 
            m: resend.copy.
            m  contentsMorph: c.
            m  contentsMorph setWindowLabel.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         defaultWindowLabel = 'Unset Window Title'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: expand\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         expand: evt = ( |
            | 
            morphs first addMorphLast: frameHolderForCollapsed.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         expanderAction = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'expanderAction' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui windowMorph parent expanderAction.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'expanderAction' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         actionFrom: source Target: target Event: evt = ( |
             e.
             o.
            | 
            e: source isExpanded.
            o: target.

            e  &&  [ o isInWorld ]  ifTrue: [ o world moveToFront: o ].

            e ifTrue:[ target expand:    evt]
               False:[ target collapse:  evt].
            target).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         headerMorphLabel = ( |
             em.
             m.
            | 
            m: rowMorph copy.
            m color: paint named: 'outlinerGray'.
            m borderWidth: 6.
            em:  (expanderMorph copyTarget: self Action: expanderAction).
            em expand: true. 
            m addMorphLast: em.
            m addMorphLast: transparentSpacerMorph copyH: 6.
            m addMorphLast: (labelMorph copy label: defaultWindowLabel) addRole: windowLabelRole.
            m addMorphLast: spacer.
            m addMorphLast: closeButtonOn: self.
            m beFlexible.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initializePrototype = ( |
             cm.
             fm.
             m.
            | 
            removeAllMorphs.
            borderWidth: 3.
            color: paint named: 'outlinerGray'.

            cm: columnMorph copyTransparent borderWidth: 0.
            cm addMorphLast: headerMorphLabel.

            fm: buildInsetFrame.

            cm addMorphLast: fm.
            cm borderWidth: 0.
            cm beShrinkWrapVertically.
            cm beFlexibleHorizontally.

            addMorph: cm.
            beShrinkWrap.
            addRole: windowRole.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'windowMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'frameMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         spacer = ( |
            | 
            transparentSpacerMorph copyV: 6).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: content\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         windowLabel = ( |
            | 
            morphsWithRole: windowLabelRole 
                        Do: [|:m | ^ m label]
                  IfAbsent: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: content\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         windowLabel: l = ( |
            | 
            morphsWithRole: windowLabelRole 
                        Do: [|:m | m label: l. ^ self]    
                  IfAbsent: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         windowLabelRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'windowLabelRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui windowMorph parent windowLabelRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'windowLabelRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         windowRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'windowRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui windowMorph parent windowRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> 'parent' -> 'windowRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'windowMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            psyche gui windowMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldRecordMorph = bootstrap define: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals rowMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui worldRecordMorph.

CopyDowns:
globals rowMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui worldRecordMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildConsoleURLHolder = ( |
             l.
            | 
            l: labelMorph copyLabel: defaultConsoleURL.
            l color: paint named: 'lightGray'.
            l addRole: consoleURLHolderRole.
            l).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildIDHolder = ( |
             l.
            | 
            l: labelMorph copyLabel: defaultID.
            l addRole: idHolderRole.
            l).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildNameHolder = ( |
             h.
            | 
            h: columnMorph copyTransparent leftJustify.
            h addMorphLast: buildShortNameHolder.
            h addMorphLast: buildIDHolder.
            h addMorphLast: buildConsoleURLHolder.
            h).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildShortNameHolder = ( |
             l.
            | 
            l: labelMorph copyLabel: defaultShortName.
            l addRole: shortNameHolderRole.
            l).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         consoleURLHolderRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'consoleURLHolderRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui worldRecordMorph parent consoleURLHolderRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'consoleURLHolderRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyConsoleURLFromMenu: evt = ( |
            | worldRecord copyConsoleURLToClipboard. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyOn: aWorldRecord = ( |
             m.
            | 
            m: copy worldRecord: aWorldRecord.
            m morphsWithRole: shortNameHolderRole Do: [|:i| i label: aWorldRecord shortName] IfAbsent: raiseError.
            m morphsWithRole:        idHolderRole Do: [|:i| i label: aWorldRecord id       ] IfAbsent: raiseError.
            m morphsWithRole: consoleURLHolderRole 
                          Do: [|:i| aWorldRecord isAwake
                                        ifTrue: [  (i label: aWorldRecord consoleURL) color: paint named: 'blue'          ] 
                                         False: [  (i label: defaultConsoleURL) color: paint named: 'lightGray'    ]]
                    IfAbsent: raiseError.
            m morphsWithRole: wakeSleepStatusRole 
                          Do: [|:i| aWorldRecord isAwake
                                        ifTrue: [  (i label: 'awake') color: paint named: 'forest'       ] 
                                         False: [  (i label: 'asleep') color: paint named: 'darkGray'    ]]
                    IfAbsent: raiseError.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: defaults\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'https://[...]/[...]/console\')'
        
         defaultConsoleURL <- 'https://[...]/[...]/console'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: defaults\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         defaultID = 'xxx-xxx-xxx-xxx'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: defaults\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         defaultShortName = '(Short Name)'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deleteFromMenu: evt = ( |
            | 
            worldRecord delete. refreshManager. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         duplicateFromMenu: evt = ( |
            | 
            worldRecord duplicate. refreshManager. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         idHolderRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'idHolderRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui worldRecordMorph parent idHolderRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'idHolderRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         initializePrototype = ( |
             l.
            | 
            removeAllMorphs.
            color: paint named: 'white'.
            addMorphLast: buildNameHolder.
            addMorphLast: spacer.
            l: (labelMorph copy label: '(unknown)') color: paint named: 'gray'.
            l addRole: wakeSleepStatusRole.
            addMorphLast: l.
            addMorphLast: transparentSpacerMorph copyH: 4.
            addMorphLast: ((ui2Button copy label: '=') target: self) script: 'event sourceHand attach: event sourceHand world outlinerForMirror: reflect: target worldRecord'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         middleMouseDown: evt = ( |
            | 
            popUpMenu: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'worldRecordMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'rowMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         popUpMenu: evt = ( |
             m.
            | 
            m: ui2Menu copy color: nonpluggableOutliner menuColor.
            m addButtonTarget: self ScriptBlock: [target copyConsoleURLFromMenu: event] Label: 'Copy console URL'.
            worldRecord isAwake ifFalse: [m grayOut: true ButtonLabeled: 'Copy console URL'].
            m addDivider.
            m addButtonTarget: self ScriptBlock: [target wakeFromMenu: event] Label: 'Wake'.
            worldRecord isAwake ifTrue: [m grayOut: true ButtonLabeled: 'Wake'].
            m addButtonTarget: self ScriptBlock: [target sleepFromMenu: event] Label: 'Sleep'.
            worldRecord isAwake ifFalse: [m grayOut: true ButtonLabeled: 'Sleep'].
            m addDivider.
            m addButtonTarget: self ScriptBlock: [target duplicateFromMenu: event] Label: 'Duplicate'.
            m addDivider.
            m addButtonTarget: self ScriptBlock: [target deleteFromMenu: event] Label: 'Delete'.
            m popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         refreshManager = ( |
            | 
            "Change closest window (in case nested).
             If not in windowMorph, ignore."
            ownersWithRole: psyche gui managerMorph managerRole 
                        Do: [|:m| m refresh. ^ self]
                  IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shortNameHolderRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'shortNameHolderRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui worldRecordMorph parent shortNameHolderRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'shortNameHolderRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sleepFromMenu: evt = ( |
            | 
            worldRecord sleep. refreshManager. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         spacer = ( |
            | 
            transparentSpacerMorph copyH: 40).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wakeFromMenu: evt = ( |
            | 
            worldRecord wake. refreshManager. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wakeSleepStatusRole = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'wakeSleepStatusRole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche gui worldRecordMorph parent wakeSleepStatusRole.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> 'parent' -> 'wakeSleepStatusRole' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | psyche gui worldRecordMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldRecord = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'gui' -> 'worldRecordMorph' -> () From: ( | {
         'Category: World Record State\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche worlds worldRecord)'
        
         worldRecord <- bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> ().
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
            sys sh: 'ls /worlds/psyche > /dev/null 2>&1' IfFail: [blk value].
            sys sh: 'ls ', worlds storeBaseDirectory, ' > /dev/null 2>&1' IfFail: [blk value].
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

            conf writeTo: '/worlds/psyche/psyche.conf' IfFail: [e: 'Did not save conf file!'].
            psyche config loadIfFail: [e: 'Did not read conf file!'].

            '\n\nThank you. We will now continue based on the config.\n\n\n' print.

            self).
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
            setHostname.
            setRootPassword: conf unixConsolePasswordHash.
            conf tailscale = 'enabled'
               ifTrue: [ startTailscaleWithKey: conf tailscale_auth_key ].
            conf systemDesktop = 'enabled' ifTrue: [
              setFirewall: conf systemDesktopAccessType.
              openDesktop].
            conf developmentMachine = 'enabled'
               ifTrue: setupForDevelopment.
            worlds worldRecord runner ensureProperSetupOnBoot.
            clearScreen print. welcomeMessage print.
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
            preferences desktop backgroundColor: (paint named: 'azure').
            desktop isOpen 
             ifTrue: [desktop returnFromSnapshot]
              False: [desktop open].
            desktop suppressRestart. "Needed to ensure that the only opening path is here.
                                      Sets desktop restartSuppressedFlag: true"
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
        
         createDatasetsIfFail: blk = ( |
            | 
            sys zfs createDataset: 'worlds/psyche' IfFail: blk.
            sys zfs createDataset: psyche worlds storeBaseDataset IfFail: blk.
            self).
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
            createDatasetsIfFail: [
                '\n\nCannot create datasets, rebooting...' printLine.
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
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setFontPath = ( |
            | 
            os command: 'mkfontdir /usr/local/share/fonts/100dpi'.
            os command: 'DISPLAY=:1 xset fp+ /usr/local/share/fonts/100dpi'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: network\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setHostname = ( |
            | sys caddy hostname: config current hostname. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setRootPassword: hash = ( |
            | 
            sys sh: 'chpass -p \'', hash, '\' root'.
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
            os command: 'daemon -o ', consoleLogFile, ' -f /opt/noVNC/utils/novnc_proxy --listen 6080 --vnc :5901'.
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
        
         startRatpoison = ( |
            | 
            os command: 'DISPLAY=:1 daemon -o', consoleLogFile, ' /usr/local/bin/ratpoison'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: network\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startTailscaleWithKey: k = ( |
             o.
            | 
            (k includesSubstring: 'tskey-auth-') ifFalse: [
              log error: 'Tailscale enabled but bad or no auth key'.
              ^ self].
            sys sh: 'service tailscaled onestart'.
            o: sys outputOfCommand: 'tailscale up --auth-key=', k
                           Timeout: 30 * 1000 
                         IfTimeout: [|:output| output].
            o wasSuccessful
              ifTrue: [log info: 'Started tailscale']
               False: [log warn: 'tailscale: ', o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startX = ( |
            | 
            os command: 'daemon -o ', consoleLogFile, ' /usr/local/bin/Xvnc :1 -geometry ', systemDesktopSize, ' -depth 24 -SecurityTypes None,TLSNone'.
            "Pause until Xvnc has started "
            [ 0 = (os command: 'ls /tmp/.X11-unix/X1 >/dev/null 2>&1 ')] whileFalse.
            os command: 'daemon -o ', consoleLogFile, ' /usr/local/bin/vncconfig -display :1 -nowin'.
            os command: 'daemon -o ', consoleLogFile, ' autocutsel'.
            [process this sleep: 2000].
            startRatpoison.
            setFontPath.
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
            | 
            '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configHeader = ( |
             h.
             ts.
            | 
            h: '
            http://%IP% {
              error * "Not authorised - try https" 403
            }\n\n'.
            h: h replace: '%IP%' With: sys caddy hostname.

            ts: ''.
            sys tailscale isUp ifTrue: [
              ts: '\nhttp://%HOST% {\nerror * "Not authorised - try https" 403\n}\n'.
              ts: ts replace: '%HOST%' With: sys tailscale fullyQualifiedDomainNameIfFail: [
                                                     log warn: 'Couldn\'t find Tailscale FQN'.
                                                     'unknown.example.com'].
              ]. 

            h, ts).
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
         'Category: reading\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parseConfig: c = ( |
             cc.
            | 
            cc: copy.
            (c splitOn: '\n') do: [|:l|
             (l isEmpty not && [l first = '#']) ifTrue: [|s|
                s: l splitOn: ' '.
                "We may not have username or passwordHash"
                cc registerPath: (s at: 1)
                       ForProxy: (s at: 2)
                       Username: (s at: 3 IfAbsent: '')
                   PasswordHash: (s at: 4 IfAbsent: '')]].
            cc).
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
        
         isPasswordProtected = ( |
            | 
            '' != username).
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
        
         registerPath: path ForProxy: proxy = ( |
            | 
            proxies at: path
                   Put: (
            (((proxyEntryPrototype copy
                    path: path)
                   proxy: proxy)
                username: '')
            passwordHash: '').
            self).
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
        
         renderConfigWrapping: str = ( |
             h.
            | 
            h: '%IP% {\n'.
            h: h replace: '%IP%' With: sys caddy hostname.
            h: h, str, '\n\n}'. 

            sys tailscale isUp ifTrue: [
              h: h, '\n%HOST% {\n'.
              h: h replace: '%HOST%' With: sys tailscale fullyQualifiedDomainNameIfFail: [
                                                     log warn: 'Couldn\'t find Tailscale FQN'.
                                                     'unknown.example.com'].
              h: h, str, '\n}\n']. 

            h).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> 'caddyConfigPrototype' -> () From: ( | {
         'Category: writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         renderCoreConfig = ( |
             ba.
             hp.
             s.
            | 
            s: ''.
            hp: '    handle_path %PATH%* {
                  reverse_proxy %PROXY%
                }
            '.
            ba: '    basic_auth %PATH%* bcrypt %PATH% {
                  %USER% %HASH%
                }
            '.

            proxies do: [|:p. c|
              c: hp copy.
              c: c replace: '%PATH%' With: p path.
              c: c replace: '%PROXY%' With: p proxy.
              s: s, c.
              p isPasswordProtected ifTrue: [
                c: ba copy.
                c: c replace: '%PATH%' With: p path.
                c: c replace: '%PROXY%' With: p proxy.
                c: c replace: '%USER%' With: p username.
                c: c replace: '%HASH%' With: p passwordHash.
                s: s, c]].
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
            renderMeta, configHeader, (renderConfigWrapping: renderCoreConfig), configFooter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         changeConfig: changeBlock = ( |
             n.
             o.
            | 
            o: config.
            n: config copy.
            changeBlock value: n.
            isRunningIfFail: [raiseError].
            config: n.
            validateConfig ifFalse: [config: o. raiseError].
            reloadConfigIfFail: [raiseError].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         config = ( |
            | caddyConfigPrototype parseConfig: text_config).
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
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hashPassword: p IfFail: blk = ( |
            | 
            " 1 minute timeout for slow (eg emulated) systems "
            (sys outputOfCommand: 'caddy hash-password -p ', p 
                       IfTimeout: [^ blk value: 'timeout']
            ) stdout shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'Category: hostname\x7fComment: This should be one of three types:
- localhost, ie 127.0.0.1 (assuming ip4)
- local ip, eg 192.168.1.114 
- global domain name set in psyche.conf\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hostname = ( |
            | 
            'automatic' = rawHostname ifTrue:[
               ^ sys ifconfig local_ip4_ifFail: '127.0.0.1']. rawHostname).
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
            r: sys outputOfCommand: 'service caddy onestatus' IfTimeout: [^ fb value: 'Check for running Caddy failed.'].
            r stdout shrinkwrapped != 'caddy is not running.').
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
         'Category: hostname\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche sys caddy localhost)'
        
         rawHostname <- psyche sys caddy localhost.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerPath: path ForProxy: proxy = ( |
            | 
            changeConfig: [|:n|
            n registerPath: path ForProxy: proxy].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'caddy' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerPath: path ForProxy: proxy Username: user PasswordHash: ph = ( |
            | 
            changeConfig: [|:c|
              c registerPath: path
                    ForProxy: proxy
                    Username: user 
                PasswordHash: ph].
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
            | 
            sys readFileFrom: configFilename IfFail: raiseError).
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
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (false)'
        
         timedOut <- bootstrap stub -> 'globals' -> 'false' -> ().
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
        
         runIfFail: blk = ( |
             o.
            | 
            o: sys outputOfCommand: 'fetch -o ', out, ' ', url
                           Timeout: 60 * 60 * 1000 "Extra long timeout"
                         IfTimeout: [^ blk value: 'Fetch timed out'].
            o exitCode != 0 ifTrue: [^ blk value: 'Fetch returned exit code ', o exitCode asString, ' ', o stderr].
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
        
         ifconfig = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys ifconfig.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         bridge = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'bridge' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys ifconfig bridge.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'bridge' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         asStringForIfConfig = ( |
            | 'bridge', id asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'bridge' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyFromName: str IfInvalid: blk = ( |
             n.
             ns.
             s.
            | 
            'bridge' = (str slice: 0 @ ('bridge' size)) ifFalse: [^ blk value: 'invalid bridge name'].
            ns: str slice: ('bridge' size) @ infinity.
            n: ns asIntegerIfFail: [^ blk value: 'invalid bridge name'].
            copy id: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'bridge' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         id.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'bridge' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'Category: create\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         createBridgeIfFail: blk = ( |
            | 
            sys shelloutCommand: 'ifconfig bridge create'
                      IfTimeout: [blk value: 'Timed out']
                        IfError: [blk value: 'Call to ifconfig failed']
                      IfSuccess: [|:o. b |
                         bridge copyFromName: o stdout shrinkwrapped IfInvalid: 'Invalid response from ifconfig']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         epair = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'epair' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys ifconfig epair.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'epair' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         asStringForIfConfig = ( |
            | 
            'epair', id asString, side asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'epair' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyFromName: str IfInvalid: blk = ( |
             err.
             n.
             ns.
             s.
             sd.
            | 
            err: [^ blk value: 'invalid epair name'].
            'epair' = (str slice: 0 @ ('epair' size)) ifFalse: err.
            ns: str slice: ('epair' size) @ infinity.
            sd: ns last. ('a' = sd) || ('b' = sd) ifFalse: err.
            n: (ns slice: 0 @ -1) asIntegerIfFail: err.
            (copy id: n) side: sd).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'epair' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         id.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'epair' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> 'epair' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         side <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'Category: query system\x7fComment: Just returns first active that isn\'t loopback\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         localInterface = ( |
             i.
             s.
            | 
            s: sys outputOfCommand: 'ifconfig -l' IfTimeout: ''.
            i: s stdout splitOn: ' '.
            "Filter out loopbacks"
            i: i filterBy: [|:x| (x slice: 0@2) != 'lo'].
            i first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'Category: query system\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         local_ip4_ifFail: blk = ( |
            | 
            sys shelloutCommand: 'ifconfig ', localInterface, ' | grep -w inet | awk \'{print $2}\'' 
                      IfTimeout: [blk value: 'Timed out']
                        IfError: [blk value: 'Call to ifconfig failed']
                      IfSuccess: [|:o| ^ o stdout shrinkwrapped]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'ifconfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
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
            ((sys outputOfCommand: 'mount -p' IfTimeout: raiseError) stdout shrinkwrapped splitOn: '\n')
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
            sys sh: 'umount -f ', mountpoint IfFail: [|:e| ^ fb value: e].
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
         'Category: support\x7fCategory: command with result 2\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         outputOfCommand: commandSource = ( |
            | 
             outputOfCommand: commandSource
            Timeout: standardTimeout).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command with result\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         outputOfCommand: commandSource IfTimeout: fb = ( |
            | outputOfCommand: commandSource
            Timeout: standardTimeout IfTimeout: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command with result 2\x7fComment: Attempts to run the os command commandSource
in a separate OS-level process. Redirects the
text output of the command into a temporary
file, and returns the contents of that file
after process has finished.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         outputOfCommand: commandSource Timeout: ms = ( |
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
                    o exitCode: (readFileFrom: exitCode IfFail: raiseError) shrinkwrapped asInteger.
                    o stdout: (readFileFrom: stdout IfFail: raiseError).
                    o stderr: (readFileFrom: stderr IfFail: raiseError).
                    o]
                False: [commandOutput copy timedOut: true]. "Return with a blank commandOutput"
            ] onReturn: [
              os unlink: stdout    IfFail: [].
              os unlink: stderr    IfFail: [].
              os unlink: flag      IfFail: [].
              os unlink: exitCode  IfFail: [].
            ]).
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
                    o timedOut: false.
                    o exitCode: (readFileFrom: exitCode IfFail: raiseError) shrinkwrapped asInteger.
                    o stdout: (readFileFrom: stdout IfFail: raiseError).
                    o stderr: (readFileFrom: stderr IfFail: raiseError).
                    o]
                False: [fb value: commandOutput copy timedOut: true]. "Return with a blank commandOutput"
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
            0 = f size ifTrue: [^ ''].
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
            r: outputOfCommand: 'jls -d name' IfTimeout: [log error: errMsg. ^ sequence copyRemoveAll].
            r: (r stdout splitOn: '\n') filterBy: [|:l| l != ''].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command\x7fComment: Only use this manually\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd = ( |
            | 
            sh: cmd IfFail: [|:e| ^ error: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd IfFail: blk = ( |
             r.
            | 
            r:  os command: cmd.
            r = 0 ifFalse: [^ blk value: r].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command with result 2\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shelloutCommand: cmd IfTimeout: timeoutBlk IfError: errorBlk IfSuccess: successBlk = ( |
            | 
            shelloutCommand: cmd Timeout: standardTimeout IfTimeout: timeoutBlk IfError: errorBlk IfSuccess: successBlk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: support\x7fCategory: command with result 2\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shelloutCommand: cmd Timeout: ms IfTimeout: timeoutBlk IfError: errorBlk IfSuccess: successBlk = ( |
             o.
            | 
            o: outputOfCommand: cmd Timeout: ms.
            o timedOut ifTrue: [^ timeoutBlk value: o].
            o wasSuccessful ifFalse: [^ errorBlk value: o].
            successBlk value: o).
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
         'Category: support\x7fCategory: command with result\x7fComment: 2 minutes (for running on very slow systems)\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         standardTimeout = 120000.
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
            | 
            (outputOfCommand: c IfTimeout: raiseError) stdout).
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
         'Category: system\x7fCategory: tailscale\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         tailscale = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'tailscale' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche sys tailscale.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'tailscale' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fullyQualifiedDomainNameIfFail: blk = ( |
             end.
             s.
             start.
            | 
            s: (sys outputOfCommand: 'tailscale dns status'
                    IfTimeout: (| stdout = ''. value = (self) |)) stdout.
            start: s findSubstring: 'device at'
                          IfPresent: [|:i | i + 'device at' size + 1]
                          IfAbsent: [^ blk value].
            end: s findSubstring: '\n'
                      StartingAt: start
                       IfPresent: [|:i | i - 1] "Chop off final ."
                        IfAbsent: [^ blk value].
            s copyFrom: start UpTo: end).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'tailscale' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         isUp = ( |
            | (sys outputOfCommand: 'tailscale status' IfTimeout: false) wasSuccessful).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'tailscale' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'tailscale' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: files and directories\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         touch: fn IfFail: blk = ( |
            | 
            outputOfCommand: 'touch ', fn IfTimeout: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> () From: ( | {
         'Category: system\x7fCategory: uuid\x7fComment: A 32 character string (so it fits in usernames)\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         uuidgen = ( |
            | 
            ((outputOfCommand: 'uuidgen' IfTimeout: raiseError) 
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
        
         createDataset: ds IfFail: blk = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs create ', ds IfTimeout: [^ blk value].
            o exitCode != 0 ifTrue: [^ blk value: o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         createSnapshotOf: ds Named: sn = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs snapshot ', ds, '@', sn IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         datasetExists: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs list -o name -rpH ', ds IfTimeout: raiseError.
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
            o: sys outputOfCommand: 'zfs list -o name -rpH ', ds IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            (o stdout shrinkwrapped splitOn: '\n') asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         destroyDataset: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs destroy -r ', ds IfTimeout: raiseError.
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
            o: sys outputOfCommand: 'zfs send ', ds, '@', s, ' | zfs recv ', nds IfTimeout: raiseError.
            o exitCode != 0 ifTrue: [raiseError value: o stderr].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> 'zfs' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         mountpointOfDataset: ds = ( |
             o.
            | 
            o: sys outputOfCommand: 'zfs get -o value -H mountpoint ', ds IfTimeout: raiseError.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'transactor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ! blk = ( |
            | 
            psycheTransactorLock protect: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'transactor' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (lock copy)'
        
         psycheTransactorLock <- lock copy.
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
            '\nW E L C O M E   T O   P S Y C H E\n\nVersion: ', version, '\n\n\n', 
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
        
         importWorldFromURL: url = ( |
            | worldRecord duplicateURL: url).
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
        
         systemRecord = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( |
             {} = 'Comment: I am a snapshot of the worlds known
to the system and their status. I should
be treated as immutable - if you think things
have changed then `update` me.\x7fModuleInfo: Creator: globals psyche worlds systemRecord.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         knownWorlds <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (time origin)'
        
         snapshotTimestamp <- time origin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         storeBaseDataset = ( |
            | worlds storeBaseDataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         storeBaseDirectory = ( |
            | worlds storeBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Comment: Give me an updated snapshot.\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         updatedRecord = ( |
            | copy update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         uuidsOfKnownWorlds = ( |
            | 
            ((sys zfs datasetsAndChildrenUnder: storeBaseDataset) asSequence
              filterBy: [|:ds| ds != storeBaseDataset])
              mapBy: [|:ds| ds slice: (storeBaseDataset size + 1) @ infinity]
            " +1 because we need to remove separator / ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'systemRecord' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worlds = bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         updatedSystemRecord = ( |
            | systemRecord updatedRecord).
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
            | 
            'https://', sys caddy hostname, '/', id, '/console/').
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
            sys zfs createDataset:  ds IfFail: raiseError.
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
            | 
            duplicateURL: url ReportingTo: [|:m| self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> () From: ( | {
         'Category: actions\x7fComment: For interactive reporting\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         duplicateURL: url ReportingTo: blk = ( |
             err.
             fn.
             wr.
            | 
            err: [|:m | blk value: 'Failed: ', m asString. ^ self ].
            fn: os_file temporaryFileName, '.tar.xz'.
            ((sys fetch url: url) out: fn) runIfFail: [|:e| ^ err value: e].
            blk value: 'Fetched URL'.
            wr: duplicateEmpty.
            sys sh: 'tar -xf ', fn, ' -C ', 
                      (sys zfs mountpointOfDataset: wr dataset).
                sys removeFile: fn IfFail: [^ err value: 'Could not unpack'].
            blk value: 'Unpacked world'.
            self).
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
            h: sys caddy hashPassword: p IfFail: raiseError.
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
            ('/dev' & '/var' & '/var/run' & '/libexec' & '/lib' & '/etc' & '/tmp' & '/root' & '/objects' & '/firmware') asVector do: mkdir.

            sharedDirs do: mkdir.

            " resolv.conf "
            sys sh: 'cp /etc/resolv.conf ', templateDirectory, '/etc/resolv.conf'.

            copyInFirmware.
            copyInCaddyfile.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         caddyfile = '
{ 
  auto_https off
}
:80 {
  bind unix//tmp/morphic.0.socket
  reverse_proxy http://127.0.0.1:6080
}
'.
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
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyInCaddyfile = ( |
             f.
            | 
            f: os_file openForWriting: templateDirectory, '/firmware/caddyfile' IfFail: raiseError.
            f write: caddyfile asString.
            f close.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyInFirmware = ( |
             f.
            | 
            f: os_file openForWriting: templateDirectory, '/firmware/firmware.self' IfFail: raiseError.
            f write: firmware asString.
            f close.
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
         'Category: desktops\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deregisterDesktopsWithCaddy = ( |
            | 
            psyche sys caddy deregisterPath: '/', id, '/desktop/'.
            self).
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
                                e umountForcedIfFail: fb]]
                IfAbsent: ignore].

            sharedDirs do: umount.
            tmpDirs do: umount.
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
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         firmware = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'firmware' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord runner firmware.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         asString = ( |
            | rawString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         load = ( |
            | rawString: '/jailTemplate/firmware/firmware.self' asFileContents. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\' \\\'0.0.8\\\'
 \\\'
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
\\\'
[\\\"preFileIn\\\" self] value


 \\\'-- Module body\\\'

 bootstrap addSlotsTo: bootstrap stub -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         firmware = bootstrap setObjectAnnotationOf: bootstrap stub -> \\\'firmware\\\' -> () From: ( |
             {} = \\\'ModuleInfo: Creator: firmware.
\\\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'Category: caddyfile\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         caddyFilename = \\\'/tmp/caddyFile\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'Category: caddyfile\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         caddyfile = bootstrap setObjectAnnotationOf: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( |
             {} = \\\'ModuleInfo: Creator: firmware caddyfile.
\\\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         asString = ( |
            | 
            header, 
            caddyConfigForUsers,
            footer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'Category: users\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         caddyConfigForUser: u IfAbsent: blk = ( |
            | 
            \\\'\\\' = u passwordHash ifTrue: [
              log warn: \\\'Skipping user \\\', u name asString, \\\' as empty password.\\\'. ^ \\\'\\\'].
            \\\'
              handle_path /\\\', u name asString, \\\'/* {
                reverse_proxy http://127.0.0.1:608\\\', (desktopNumberForUser: u IfAbsent: [^ blk value]) asString, \\\'
              }
              basic_auth /\\\', u name asString, \\\'/* bcrypt \\\', u name asString, \\\' {
                \\\', u name asString, \\\' \\\', u passwordHash, \\\'
              }
            \\\').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'Category: users\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         caddyConfigForUsers = ( |
             c.
            | 
            c: caddyConfigForUser: users owner IfAbsent: \\\'\\\'.
            users team do: [|:u|
              c: c, caddyConfigForUser: u IfAbsent: \\\'\\\'].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         desktop: n = ( |
            | 
            \\\'
              handle_path /\\\', n asString, \\\'/* {
                reverse_proxy http://127.0.0.1:608\\\', n asString, \\\'
              }
            \\\').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'Category: users\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         desktopNumberForUser: u IfAbsent: blk = ( |
            | ((u findFirstHandIfAbsent: [^ blk value]) winCanvasForHand display serverName slice: 1 @ infinity) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'Comment: This isn\\\\\\\'t used anymore, keeping around until new
caddyConfigForUsers works.\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         desktops = ( |
             s.
            | 
            s: \\\'\\\'.
            1 to: 5 Do: [|:n| s: s, (desktop: n)].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         footer = \\\'
}
\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         header = \\\'
{
  auto_https off
}
:80 {
    bind unix//tmp/desktop.socket

\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'caddyfile\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         parent* = bootstrap stub -> \\\'traits\\\' -> \\\'oddball\\\' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'Category: world metadata\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         metadata = bootstrap setObjectAnnotationOf: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( |
             {} = \\\'ModuleInfo: Creator: firmware metadata.
\\\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         asDictionaryDo: blk = ( |
            | sync: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( | {
         \\\'Category: private\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         filename = \\\'/objects/metadata\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         parent* = bootstrap stub -> \\\'traits\\\' -> \\\'oddball\\\' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( | {
         \\\'Category: private\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         readToDictionary: f = ( |
             d.
            | 
            d: dictionary copyRemoveAll.
            (f contents shrinkwrapped splitOn: \\\'\\\\n\\\') do: [|:line. s |
              s: [|:o| ((line splitOn: \\\'=\\\') at: o) shrinkwrapped].
              d at: (s value: 0) Put: (s value: 1)].
            d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( | {
         \\\'Category: private\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\\x7fVisibility: private\\\'
        
         sync: b = ( |
             d.
             f.
             r.
            | 
            f: os_file open: filename
                      Flags: os_file flags readWrite
                     IfFail: raiseError.
            d: readToDictionary: f.
            r: b value: d.
            writeDictionary: d ToFile: f.
            f close.
            r == d ifTrue: [self] False: [r]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> \\\'metadata\\\' -> () From: ( | {
         \\\'Category: private\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         writeDictionary: d ToFile: f = ( |
            | 
            f rewind.
            d keys do: [|:k|
              f write: k asString, \\\' = \\\', (d at: k) asString, \\\'\\\\n\\\'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         parent* = bootstrap stub -> \\\'traits\\\' -> \\\'oddball\\\' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         reloadCaddy = ( |
            | 
            saveCaddyfile.
            os command: \\\'caddy reload --config \\\', caddyFilename, \\\' --adapter caddyfile\\\'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'Category: caddyfile\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         saveCaddyfile = ( |
            | 
            caddyFilename setFileContentsTo: caddyfile asString. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         startCaddy = ( |
            | 
            os command: \\\'daemon caddy run --config \\\', caddyFilename, \\\' --adapter caddyfile\\\'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'Category: xvnc\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         startXvncOn: slot = ( |
             n.
            | 
            n: slot asString.
            os command: \\\'daemon Xvnc :\\\', n, \\\' -geometry 1000x7000 -depth 24 -SecurityTypes None\\\'.
            \\\"Pause until Xvnc has started \\\"
            [ 0 = (os command: \\\'ls /tmp/.X11-unix/X\\\', n, \\\' >/dev/null 2>&1 \\\')] whileFalse.
            os command: \\\'DISPLAY=:\\\', n, \\\' daemon /usr/local/bin/ratpoison\\\'.
            os command: \\\'daemon -f /opt/noVNC/utils/novnc_proxy --listen 608\\\', n, \\\' --vnc :590\\\', n.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         startup = ( |
            | 
            1 to: 5 Do: [|:n| startXvncOn: n].
            saveCaddyfile.
            startCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         firmware = bootstrap define: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: \\\'directory\\\' From:
             bootstrap remove: \\\'fileInTimeString\\\' From:
             bootstrap remove: \\\'myComment\\\' From:
             bootstrap remove: \\\'postFileIn\\\' From:
             bootstrap remove: \\\'revision\\\' From:
             bootstrap remove: \\\'subpartNames\\\' From:
             bootstrap remove: \\\'tree\\\' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( |
             {} = \\\'ModuleInfo: Creator: globals modules firmware.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\\\\x7fIsComplete: \\\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\\x7fVisibility: public\\\'
        
         directory <- \\\'\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (_CurrentTimeString)\\\\x7fVisibility: public\\\'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\\\\\\\'This module is provided by the base
system. Filing this out is unlikely to do 
what you think it will.\\\\\\\')\\\'
        
         myComment <- \\\'This module is provided by the base
system. Filing this out is unlikely to do 
what you think it will.\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         postFileIn = ( |
            | 
            registerTree: \\\'firmware\\\' At: \\\'/tmp/firmware\\\'.
            firmware startup.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\\\\\\\'0.0.8\\\\\\\')\\\\x7fVisibility: public\\\'
        
         revision <- \\\'0.0.8\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: FollowSlot\\\\x7fVisibility: private\\\'
        
         subpartNames <- \\\'\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'modules\\\' -> \\\'firmware\\\' -> () From: ( | {
         \\\'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\\\\\\\'firmware\\\\\\\')\\\'
        
         tree <- \\\'firmware\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'userProfile\\\' -> \\\'parent\\\' -> () From: ( | {
         \\\'Category: firmware\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         findFirstHandIfAbsent: blk = ( |
             h.
            | 
            desktop worlds do: [|:w|
              w hands do: [|:h|  
                self = h userInfo ifTrue: [^ h]]].
            blk value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'userProfile\\\' -> \\\'parent\\\' -> () From: ( | {
         \\\'Category: firmware\\\\x7fComment: This is provided by the firmware
from the underlying system. 
IT IS PROVISIONAL - DONT USE THIS\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         password: p = ( |
             ph.
            | 
            ph: (os outputOfCommand: \\\'caddy hash-password -p \\\', p
                            Timeout: 10 * 1000
                             IfFail: raiseError).
            passwordHash: ph shrinkwrapped.
            firmware reloadCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'userProfile\\\' -> \\\'parent\\\' -> () From: ( | {
         \\\'Category: firmware\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         passwordHash = \\\'\\\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'globals\\\' -> \\\'userProfile\\\' -> \\\'parent\\\' -> () From: ( | {
         \\\'Category: firmware\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         passwordHash: h = ( |
            | _AddSlots: (| passwordHash |). passwordHash: h. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'traits\\\' -> \\\'worldMorph\\\' -> () From: ( | {
         \\\'Category: menu operations\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         attachCloseWindowForUserDialog: evt = ( |
             availableHands.
             availableUsers.
             chosenHand.
            | 
            hands size = 1 ifTrue: [
               userQuery report: \\\'Only the owner is connected\\\'.
               ^ self].
            availableHands: (hands asSequence copyFilteredBy: [|:h| h userInfo name != users owner name]).
            availableUsers: availableHands copyMappedBy: [|:h| h userInfo name].
            chosenHand: userQuery
             askMultipleChoice: \\\'Which user?\\\'
             Choices: availableUsers
             Results:  availableHands.
            safelyDoIfWorld: [ closeFromHand: chosenHand].
            firmware reloadCaddy.
            userQuery report: \\\'Access for \\\', chosenHand userInfo name, \\\' removed.\\\'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'traits\\\' -> \\\'worldMorph\\\' -> () From: ( | {
         \\\'Category: menu operations\\\\x7fComment: The user chooses from a list of predefined usersProfiles in the team.
I then look for a X display on the local machine which doesn\\\\\\\'t already have a
Self window in this world open on it, and open a new Self window for that userProfile
on that display.\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         attachOpenWindowForUserDialog: evt = ( |
             availableDisplays.
             chosenDisplay.
             chosenUser.
             freeDisplays.
             usedDisplays.
            | 
            users team isEmpty ifTrue: [
               userQuery report: \\\'You have not defined any users\\\'.
               ^ self].
            chosenUser: userQuery
             askMultipleChoice: \\\'Which user?\\\'
             Choices: (users team copyMappedBy: [|:u| u name]) asVector
             Results: users team asVector.
            availableDisplays: (os outputOfCommand: \\\'ls /tmp/.X11-unix/\\\' Delay: 100 IfFail: [
               (userQuery askYesNo: \\\'Could not get list of available displays. Retry?\\\')
                  ifTrue: [^ attachOpenWindowForUserDialog: evt]
                   False: [^ self]]).
            availableDisplays: (availableDisplays shrinkwrapped splitOn: \\\'\\\\n\\\') mapBy: [|:d| \\\':\\\', (d slice: 1 @ infinity)].
            usedDisplays: hands copyMappedBy: [|:h| (h winCanvasForHand display originalName splitOn: \\\'.\\\') first].
            freeDisplays: availableDisplays difference: usedDisplays.
            freeDisplays isEmpty ifTrue: [userQuery report: \\\'There are no free displays.\\\'. ^ self].
            chosenDisplay: freeDisplays first.
            addWindowOnDisplay: chosenDisplay Bounds: (0@0)##(3000@3000) User: chosenUser Limited: false.
            firmware reloadCaddy.
            reportThatUser: chosenUser CanAccessDisplay: chosenDisplay.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \\\'traits\\\' -> \\\'worldMorph\\\' -> () From: ( | {
         \\\'Category: menu operations\\\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\\'
        
         reportThatUser: u CanAccessDisplay: d = ( |
            | 
            userQuery report: u name, \\\' may now connect on desktop /[world id]/desktop/\\\', u name, \\\'/\\\'.
            self).
        } | ) 



 \\\'-- Side effects\\\'

 globals modules firmware postFileIn
\' copyMutable)'
        
         rawString <- ' \'0.0.8\'
 \'
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
\'
[\"preFileIn\" self] value


 \'-- Module body\'

 bootstrap addSlotsTo: bootstrap stub -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         firmware = bootstrap setObjectAnnotationOf: bootstrap stub -> \'firmware\' -> () From: ( |
             {} = \'ModuleInfo: Creator: firmware.
\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'Category: caddyfile\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         caddyFilename = \'/tmp/caddyFile\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'Category: caddyfile\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         caddyfile = bootstrap setObjectAnnotationOf: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( |
             {} = \'ModuleInfo: Creator: firmware caddyfile.
\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         asString = ( |
            | 
            header, 
            caddyConfigForUsers,
            footer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'Category: users\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         caddyConfigForUser: u IfAbsent: blk = ( |
            | 
            \'\' = u passwordHash ifTrue: [
              log warn: \'Skipping user \', u name asString, \' as empty password.\'. ^ \'\'].
            \'
              handle_path /\', u name asString, \'/* {
                reverse_proxy http://127.0.0.1:608\', (desktopNumberForUser: u IfAbsent: [^ blk value]) asString, \'
              }
              basic_auth /\', u name asString, \'/* bcrypt \', u name asString, \' {
                \', u name asString, \' \', u passwordHash, \'
              }
            \').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'Category: users\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         caddyConfigForUsers = ( |
             c.
            | 
            c: caddyConfigForUser: users owner IfAbsent: \'\'.
            users team do: [|:u|
              c: c, caddyConfigForUser: u IfAbsent: \'\'].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         desktop: n = ( |
            | 
            \'
              handle_path /\', n asString, \'/* {
                reverse_proxy http://127.0.0.1:608\', n asString, \'
              }
            \').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'Category: users\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         desktopNumberForUser: u IfAbsent: blk = ( |
            | ((u findFirstHandIfAbsent: [^ blk value]) winCanvasForHand display serverName slice: 1 @ infinity) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'Comment: This isn\\\'t used anymore, keeping around until new
caddyConfigForUsers works.\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         desktops = ( |
             s.
            | 
            s: \'\'.
            1 to: 5 Do: [|:n| s: s, (desktop: n)].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         footer = \'
}
\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         header = \'
{
  auto_https off
}
:80 {
    bind unix//tmp/desktop.socket

\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'caddyfile\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         parent* = bootstrap stub -> \'traits\' -> \'oddball\' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'Category: world metadata\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         metadata = bootstrap setObjectAnnotationOf: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( |
             {} = \'ModuleInfo: Creator: firmware metadata.
\'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         asDictionaryDo: blk = ( |
            | sync: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( | {
         \'Category: private\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         filename = \'/objects/metadata\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         parent* = bootstrap stub -> \'traits\' -> \'oddball\' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( | {
         \'Category: private\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         readToDictionary: f = ( |
             d.
            | 
            d: dictionary copyRemoveAll.
            (f contents shrinkwrapped splitOn: \'\\n\') do: [|:line. s |
              s: [|:o| ((line splitOn: \'=\') at: o) shrinkwrapped].
              d at: (s value: 0) Put: (s value: 1)].
            d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( | {
         \'Category: private\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\\x7fVisibility: private\'
        
         sync: b = ( |
             d.
             f.
             r.
            | 
            f: os_file open: filename
                      Flags: os_file flags readWrite
                     IfFail: raiseError.
            d: readToDictionary: f.
            r: b value: d.
            writeDictionary: d ToFile: f.
            f close.
            r == d ifTrue: [self] False: [r]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> \'metadata\' -> () From: ( | {
         \'Category: private\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         writeDictionary: d ToFile: f = ( |
            | 
            f rewind.
            d keys do: [|:k|
              f write: k asString, \' = \', (d at: k) asString, \'\\n\'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         parent* = bootstrap stub -> \'traits\' -> \'oddball\' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         reloadCaddy = ( |
            | 
            saveCaddyfile.
            os command: \'caddy reload --config \', caddyFilename, \' --adapter caddyfile\'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'Category: caddyfile\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         saveCaddyfile = ( |
            | 
            caddyFilename setFileContentsTo: caddyfile asString. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         startCaddy = ( |
            | 
            os command: \'daemon caddy run --config \', caddyFilename, \' --adapter caddyfile\'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'Category: xvnc\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         startXvncOn: slot = ( |
             n.
            | 
            n: slot asString.
            os command: \'daemon Xvnc :\', n, \' -geometry 1000x7000 -depth 24 -SecurityTypes None\'.
            \"Pause until Xvnc has started \"
            [ 0 = (os command: \'ls /tmp/.X11-unix/X\', n, \' >/dev/null 2>&1 \')] whileFalse.
            os command: \'DISPLAY=:\', n, \' daemon /usr/local/bin/ratpoison\'.
            os command: \'daemon -f /opt/noVNC/utils/novnc_proxy --listen 608\', n, \' --vnc :590\', n.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         startup = ( |
            | 
            1 to: 5 Do: [|:n| startXvncOn: n].
            saveCaddyfile.
            startCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         firmware = bootstrap define: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: \'directory\' From:
             bootstrap remove: \'fileInTimeString\' From:
             bootstrap remove: \'myComment\' From:
             bootstrap remove: \'postFileIn\' From:
             bootstrap remove: \'revision\' From:
             bootstrap remove: \'subpartNames\' From:
             bootstrap remove: \'tree\' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( |
             {} = \'ModuleInfo: Creator: globals modules firmware.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\\x7fIsComplete: \'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\\x7fVisibility: public\'
        
         directory <- \'\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (_CurrentTimeString)\\x7fVisibility: public\'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\\\'This module is provided by the base
system. Filing this out is unlikely to do 
what you think it will.\\\')\'
        
         myComment <- \'This module is provided by the base
system. Filing this out is unlikely to do 
what you think it will.\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         postFileIn = ( |
            | 
            registerTree: \'firmware\' At: \'/tmp/firmware\'.
            firmware startup.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\\\'0.0.8\\\')\\x7fVisibility: public\'
        
         revision <- \'0.0.8\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: FollowSlot\\x7fVisibility: private\'
        
         subpartNames <- \'\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'modules\' -> \'firmware\' -> () From: ( | {
         \'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\\\'firmware\\\')\'
        
         tree <- \'firmware\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'userProfile\' -> \'parent\' -> () From: ( | {
         \'Category: firmware\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         findFirstHandIfAbsent: blk = ( |
             h.
            | 
            desktop worlds do: [|:w|
              w hands do: [|:h|  
                self = h userInfo ifTrue: [^ h]]].
            blk value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'userProfile\' -> \'parent\' -> () From: ( | {
         \'Category: firmware\\x7fComment: This is provided by the firmware
from the underlying system. 
IT IS PROVISIONAL - DONT USE THIS\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         password: p = ( |
             ph.
            | 
            ph: (os outputOfCommand: \'caddy hash-password -p \', p
                            Timeout: 10 * 1000
                             IfFail: raiseError).
            passwordHash: ph shrinkwrapped.
            firmware reloadCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'userProfile\' -> \'parent\' -> () From: ( | {
         \'Category: firmware\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         passwordHash = \'\'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'globals\' -> \'userProfile\' -> \'parent\' -> () From: ( | {
         \'Category: firmware\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         passwordHash: h = ( |
            | _AddSlots: (| passwordHash |). passwordHash: h. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'traits\' -> \'worldMorph\' -> () From: ( | {
         \'Category: menu operations\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         attachCloseWindowForUserDialog: evt = ( |
             availableHands.
             availableUsers.
             chosenHand.
            | 
            hands size = 1 ifTrue: [
               userQuery report: \'Only the owner is connected\'.
               ^ self].
            availableHands: (hands asSequence copyFilteredBy: [|:h| h userInfo name != users owner name]).
            availableUsers: availableHands copyMappedBy: [|:h| h userInfo name].
            chosenHand: userQuery
             askMultipleChoice: \'Which user?\'
             Choices: availableUsers
             Results:  availableHands.
            safelyDoIfWorld: [ closeFromHand: chosenHand].
            firmware reloadCaddy.
            userQuery report: \'Access for \', chosenHand userInfo name, \' removed.\'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'traits\' -> \'worldMorph\' -> () From: ( | {
         \'Category: menu operations\\x7fComment: The user chooses from a list of predefined usersProfiles in the team.
I then look for a X display on the local machine which doesn\\\'t already have a
Self window in this world open on it, and open a new Self window for that userProfile
on that display.\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         attachOpenWindowForUserDialog: evt = ( |
             availableDisplays.
             chosenDisplay.
             chosenUser.
             freeDisplays.
             usedDisplays.
            | 
            users team isEmpty ifTrue: [
               userQuery report: \'You have not defined any users\'.
               ^ self].
            chosenUser: userQuery
             askMultipleChoice: \'Which user?\'
             Choices: (users team copyMappedBy: [|:u| u name]) asVector
             Results: users team asVector.
            availableDisplays: (os outputOfCommand: \'ls /tmp/.X11-unix/\' Delay: 100 IfFail: [
               (userQuery askYesNo: \'Could not get list of available displays. Retry?\')
                  ifTrue: [^ attachOpenWindowForUserDialog: evt]
                   False: [^ self]]).
            availableDisplays: (availableDisplays shrinkwrapped splitOn: \'\\n\') mapBy: [|:d| \':\', (d slice: 1 @ infinity)].
            usedDisplays: hands copyMappedBy: [|:h| (h winCanvasForHand display originalName splitOn: \'.\') first].
            freeDisplays: availableDisplays difference: usedDisplays.
            freeDisplays isEmpty ifTrue: [userQuery report: \'There are no free displays.\'. ^ self].
            chosenDisplay: freeDisplays first.
            addWindowOnDisplay: chosenDisplay Bounds: (0@0)##(3000@3000) User: chosenUser Limited: false.
            firmware reloadCaddy.
            reportThatUser: chosenUser CanAccessDisplay: chosenDisplay.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> \'traits\' -> \'worldMorph\' -> () From: ( | {
         \'Category: menu operations\\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\'
        
         reportThatUser: u CanAccessDisplay: d = ( |
            | 
            userQuery report: u name, \' may now connect on desktop /[world id]/desktop/\', u name, \'/\'.
            self).
        } | ) 



 \'-- Side effects\'

 globals modules firmware postFileIn
' copyMutable.
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
            (l includes: 'snapshot') ifTrue: [^ '-s /objects/snapshot -f /firmware/firmware.self'].
            (l includes: 'build.self') ifTrue: [^ '-f /objects/build.self -f2 /firmware/firmware.self'].
            '').
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
         'Category: desktops\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerDesktopsWithCaddy = ( |
            | 
            psyche sys caddy 
               registerPath: '/', id, '/desktop/'
                   ForProxy: 'unix/', baseDirectory, '/tmp/desktop.socket'.
            self).
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
            " Prevent restarting manager in jail. This is UGLY.
              But we cant mount with more granularity atm. 
            "
            sys sh: 'cp /dev/null /bin/psyche_boot.sh'.

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

            tmpDirs do: [|:d|
              m type: 'tmpfs'. m options: ''. m source: 'tmpfs'. m target: baseDirectory, d.
              m mount].

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
            '/vm' & '/etc' & '/opt'
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
            deregisterDesktopsWithCaddy.
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
             epair.
             ip_a.
             ip_b.
             jid.
             n.
             s.
            | 
            n: hostName.    
            d: baseDirectory.
            s: dtachSocket.
            " Start jail "
            sys sh: 'jail -cmr path=\'', d, '\' name=\'', n, '\' persist mount.devfs vnet devfs_ruleset=5 host.hostname=\'', n,  '\' exec.start="/bin/sh /etc/rc"'.
            " Get jid "
            jid: ((sys stdoutOfCommand: 'jls -n -j ', n, ' jid') shrinkwrapped splitOn: '=') at: 1.
            " Start Self "
            sys sh: 'jexec ', n, ' /usr/local/bin/dtach -n \'', s, '\' /vm/Self ', options. 
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
            daemon: 'daemon -o ', psyche consoleLogFile, ' -f -p ', ttydPid, ' '.
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
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         tmpDirs = ( |
            | ('/tmp' & '/var' & '/root') asVector).
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
            registerDesktopsWithCaddy.
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
         'Category: internal\x7fCategory: running\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         runnerWithNetwork = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche worlds worldRecord runnerWithNetwork.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         baseDirectory = ( |
            | 
            jailsBaseDirectory, '/', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         buildTemplate = ( |
             mkdir.
            | 
            mkdir: [|:dir| sys sh: 'mkdir -p ', templateDirectory, dir].

            " Create directory "
            mkdir value: '/'.

            " Create structure "
            ('/dev' & '/var' & '/var/run' & '/libexec' & '/lib' & '/etc' & '/tmp' & '/root' & '/objects' & '/firmware') asVector do: mkdir.

            sharedDirs do: mkdir.

            " resolv.conf "
            sys sh: 'cp /etc/resolv.conf ', templateDirectory, '/etc/resolv.conf'.

            copyInFirmware.
            copyInCaddyfile.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         caddyfile = '
{ 
  auto_https off
}
:80 {
  bind unix//tmp/morphic.0.socket
  reverse_proxy http://127.0.0.1:6080
}
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         cleanTemplate = ( |
            | 
            sys sh: 'rm -rf ', templateDirectory. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyInCaddyfile = ( |
             f.
            | 
            f: os_file openForWriting: templateDirectory, '/firmware/caddyfile' IfFail: raiseError.
            f write: caddyfile asString.
            f close.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyInFirmware = ( |
             f.
            | 
            f: os_file openForWriting: templateDirectory, '/firmware/firmware.self' IfFail: raiseError.
            f write: firmware asString.
            f close.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         copyOnWorldRecord: wr = ( |
            | copy worldRecord: wr).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dataset = ( |
            | worldRecord dataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: desktops\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deregisterDesktopsWithCaddy = ( |
            | 
            psyche sys caddy deregisterPath: '/', id, '/desktop/'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         deregisterTtydWithCaddy = ( |
            | 
            psyche sys caddy deregisterPath: '/', id, '/console/'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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
                                e umountForcedIfFail: fb]]
                IfAbsent: ignore].

            sharedDirs do: umount.
            tmpDirs do: umount.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: settings\x7fComment: In jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         dtachSocket = ( |
            | sockDirectory, '/', id, '.sock').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureDtachSocketDirectory = ( |
            | 
            sys sh: 'mkdir -p ', sockDirectory. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Comment: I am sent on boot to ensure directories exist etc\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureProperSetupOnBoot = ( |
            | 
            cleanTemplate.
            ensureTemplate.
            ensureDtachSocketDirectory.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureTemplate = ( |
            | 
            (os_file exists: templateDirectory) ifFalse: [buildTemplate].
            (os_file exists: templateDirectory) ifFalse: raiseError.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ensureTtydDirectories = ( |
            | 
            sys sh: 'mkdir -p ', ttydPidDirectory.
            sys sh: 'mkdir -p ', ttydSockDirectory.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         firmware = bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runner' -> 'firmware' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hostName = ( |
            | id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         id = ( |
            | worldRecord id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailOptions = ( |
             l.
            | 
            l: (sys stdoutOfCommand: 'ls ', baseDirectory, '/objects') splitOn: '\n'.
            (l includes: 'snapshot') ifTrue: [^ '-s /objects/snapshot -f /firmware/firmware.self'].
            (l includes: 'build.self') ifTrue: [^ '-f /objects/build.self -f2 /firmware/firmware.self'].
            '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: worldRecord access\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         jailsBaseDirectory = ( |
            | worldRecord jailsBaseDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: desktops\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         registerDesktopsWithCaddy = ( |
            | 
            psyche sys caddy 
               registerPath: '/', id, '/desktop/'
                   ForProxy: 'unix/', baseDirectory, '/tmp/desktop.socket'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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

            tmpDirs do: [|:d|
              m type: 'tmpfs'. m options: ''. m source: 'tmpfs'. m target: baseDirectory, d.
              m mount].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sharedDirs = ( |
            | 
            (
            '/bin' & '/lib' & '/libexec' & '/sbin' &
            '/usr/bin' & '/usr/sbin' & '/usr/lib' & '/usr/libexec' & '/usr/share' & '/usr/libdata' & 
            '/usr/local/bin' & '/usr/local/sbin' & '/usr/local/lib' & '/usr/local/libexec' & '/usr/local/share' & '/usr/local/libdata' & '/usr/local/etc' & 
            '/vm' & '/etc' & '/opt'
            ) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sleep = ( |
            | 
            stopJail. 
            destroyJail. 
            stopTtyd. 
            deregisterTtydWithCaddy.
            deregisterDesktopsWithCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fComment: In jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sockDirectory = '/tmp'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sockDirectoryOutside = ( |
            | baseDirectory, sockDirectory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJail = ( |
            | 
            startJailWithSelfOptions: jailOptions).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJailWithSelfOptions: options = ( |
             d.
             epair.
             ip_a.
             ip_b.
             jid.
             n.
             s.
            | 
            n: hostName.    
            d: baseDirectory.
            s: dtachSocket.
            [
            " Create epair "
            epair: (sys stdoutOfCommand: 'ifconfig epair create') shrinkwrapped slice: 0 @ -1. " Drop final 'a' "
            " Start jail "
            sys sh: 'jail -cmr path=\'', d, '\' name=\'', n, '\' persist mount.devfs vnet devfs_ruleset=5 host.hostname=\'', n,  '\' exec.start="/bin/sh /etc/rc"'.
            " Get jid "
            jid: ((sys stdoutOfCommand: 'jls -n -j ', n, ' jid') shrinkwrapped splitOn: '=') at: 1.
            " Copy in epair "
            sys sh: 'ifconfig ', epair, 'b vnet ', jid.
            " Create ip based on jid"
            " NOTE: ONLY 120 JAILS ALLOWED!!!!! "
            ip_a: '10.0.0.', jid, '/8'.
            ip_b: '10.0.1.', (jid asInteger + 128) asString, '/8'.
            " Assign ip to jail"
            sys sh: 'ifconfig ', epair, 'a ', ip_a, ' up'.
            sys sh: 'jexec ', jid, ' ifconfig ', epair, 'b ', ip_b, ' up'.
            ].
            " Start Self "
            sys sh: 'jexec ', n, ' /usr/local/bin/dtach -n \'', s, '\' /vm/Self ', options. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: connections\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sys = bootstrap stub -> 'globals' -> 'psyche' -> 'sys' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail template\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         templateDirectory = '/jailTemplate'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: jail\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         tmpDirs = ( |
            | ('/tmp' & '/var' & '/root') asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydPid = ( |
            | 
            ttydPidDirectory, id, '.pid').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydPidDirectory = '/var/ttyd/pid/'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydSock = ( |
            | 
            ttydSockDirectory, id, '.sock').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: ttyd\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ttydSockDirectory = '/var/ttyd/sock/'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         wake = ( |
            | 
            ensureTemplate. 
            setupJail. 
            startJail. 
            startTtyd.
            registerTtydWithCaddy.
            registerDesktopsWithCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldDataset = ( |
            | dataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         worldDirectory = ( |
            | sys zfs mountpointOfDataset: worldDataset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
         'Category: worldRecord access\x7fComment: The world I will operate on.\x7fModuleInfo: Module: psyche InitialContents: InitializeToExpression: (psyche worlds worldRecord)'
        
         worldRecord <- bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'worlds' -> 'worldRecord' -> 'runnerWithNetwork' -> () From: ( | {
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
            '' = consolePasswordHash ifTrue: [error: 'Please set Console Password'].
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'snapshotAction' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         schedulerInitial = ( |
            | 
            log info: 'Psyche Scheduler started (according to snapshotAction schedulerInitial)'.
            psyche preventPromptStart.
            schedulerInitialMessages do: [|:msg| msg fork resume].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         addRole: anObject = ( |
            | 
            (roles includes: anObject) ifFalse: [
                roles: roles copy add: anObject].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         hasRole: anObject = ( |
            | roles includes: anObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         morphsWithRole: r Do: blk IfAbsent: absentBlk = ( |
             found <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
            allMorphsDo: [|:m|
              (m hasRole: r) ifTrue: [found: true. blk value: m]].
            found
              ifTrue: [self]
               False: [absentBlk value]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         ownersWithRole: r Do: blk IfAbsent: absentBlk = ( |
             found <- bootstrap stub -> 'globals' -> 'false' -> ().
             m.
             stop <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
            "This is all rather low level isn't it?"
            m: owner.
            [ stop ] whileFalse: [
               (m hasRole: r) ifTrue: [found: true. blk value: m].
               m isRoot ifTrue: [stop: true].
               m: m owner].
            found 
              ifTrue: [self]
               False: [absentBlk value]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: roles\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         removeRole: anObject = ( |
            | 
            (roles includes: anObject) ifTrue: [
              roles: roles copy remove: anObject].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: roles\x7fComment: Temp - copy downs will cover in future\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         roles = ( |
            | _AddSlots: (| roles |). roles: set copyRemoveAll. roles).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'proxyMorph' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         addMorphNameFramed: framed = ( |
             f.
             l.
             s.
            | 
            s: ' ', realMorph morphTypeName.
            realMorph roles isEmpty ifFalse: [
              s: s, ' ('.
              s: s, ((realMorph roles copy mapBy: [|:r| r asString]) asVector joinUsing: ', ').
              s: s, ')'].
            s: s, ' '.
            l: labelMorph copyLabel: s.
            l fontSpec: outlinerPreferences mediumFontSpec.
            f: frameMorph copy color: color.
            f beFlexible leftJustify.
            f frameStyle: f bezelStyle.
            f borderWidth: 1.
            f addMorph: l.
            framed
                ifTrue: [ addMorphLast: f ]
                 False: [ addMorphLast: l ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         addInitialMorphs = ( |
             m.
            | 
            "add outliner on the shell"
            m: psyche gui windowMorph copyWrapping: psyche gui managerMorph copy.
            m position: 50@20.
            addMorph: m.

            saveDesktop.

            self).
        } | ) 



 '-- Side effects'

 globals modules psyche postFileIn
