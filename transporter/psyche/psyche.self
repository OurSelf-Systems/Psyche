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
            snapshotAction
              forCommandLineArg: '--psycheBootRoutine'
                       DoAction: (| parent* = lobby.
                                    value: i With: arg = (
                                     psyche boot.
                                     i succ).
                                 |)).
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
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         boot = ( |
             conf.
            | 
            importWorldsZpoolIfFail: prepareStorage.
            conf: loadConfigIfFail: installOS.
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
         'Category: system desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         desktopFirewallNone = ( |
            | 
            sh: 'echo "pass in inet proto tcp to any port 5901" >> /etc/pf.conf'.
            sh: 'pfctl -vnf /etc/pf.conf && pfctl -F all -f /etc/pf.conf'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         importWorldsZpoolIfFail: blk = ( |
            | 
            sh: '/sbin/zpool import'.
            sh: '/sbin/zpool import worlds'.
                sh: 'ls /worlds'
            IfFail: blk value.
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
            | 
            'psyche.conf not found.' printLine.
            'Please answer these questions: ' printLine.
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
            systemConfig copyReadFrom: '/worlds/psyche/psyche.conf' IfFail: [|:e| blk value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
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
            sh: 'bash'.
            'Thanks, rebooting now.' printLine.
            reboot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         pwd = ( |
            | 
            (os outputOfCommand: 'pwd' Timeout: 10 IfFail: [error: 'Can\'t find PWD']) shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         reboot = ( |
            | sh: 'shutdown -r now').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system status\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         runningJails = ( |
            | 
            sh: 'jls' ResultInMs: 100).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setFirewall: type = ( |
            | 
            case
               if: 'none' = type Then: [ desktopFirewallNone ]
               Else: [('Unknown desktop access method: ', type) printLine].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: development\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         setGitDetails = ( |
            | 
            os command: 'cd /self ; git config user.name = "Russell Allen"'.
            os command: 'cd /self ; git config user.email = "mail@russell-allen.com"'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd = ( |
            | 
            os command: cmd).
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
            sh: 'jexec ', j, ' ', cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         sh: cmd ResultInMs: ms = ( |
            | 
            os outputOfCommand: cmd Timeout: ms IfFail: [error: 'Cmd failed']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system actions\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         shutdown = ( |
            | sh: 'shutdown -p now').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: jail management\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJailNamed: n InDir: d = ( |
             cmd.
            | 
            cmd: 'jail -cmr path="', d, '" name=', n, ' host.hostname=', n,  ' ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc'.
            sh: cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system desktop\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startX = ( |
            | 
            os command: 'daemon /usr/local/bin/Xvnc :1 -geometry 1024x768 -depth 24 -SecurityTypes None,TLSNone'.
            process this sleep: 2000.
            os command: 'DISPLAY=:1 daemon /usr/local/bin/ratpoison'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: jail management\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopJailNamed: n = ( |
            | 
            sh: 'jail -r ', n. 
            sh: 'umount ', pwd, '/', n, '/dev'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: config\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         systemConfig = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfig' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche systemConfig.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'enabled\')'
        
         developmentMachine <- 'enabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         configFile = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche traits configFile.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         fileSync* = bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'enabled\')'
        
         systemDesktop <- 'enabled'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'systemConfig' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'none\')'
        
         systemDesktopAccessType <- 'none'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         traits = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche traits.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: reading and writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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
         'Category: reading and writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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
         'Category: reading and writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'traits' -> 'configFile' -> () From: ( | {
         'Category: reading and writing\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         slotsToRead = ( |
            | 
            ((reflect: self) asList
              filterBy: [|:s| s isAssignment not && s isParent not && s isMethod not])
              mapBy: [|:s| s key]).
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
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         welcomeMessage = ( |
            | 
            '\n\nWELCOME TO PSYCHE\n
            Version: ', version, '\n').
        } | ) 



 '-- Side effects'

 globals modules psyche postFileIn
