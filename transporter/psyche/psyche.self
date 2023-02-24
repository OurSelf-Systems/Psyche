 '2023010601'
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
         'ModuleInfo: Module: psyche InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '2023010601'.
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
            | 
            welcomeMessage print.
            startX.
            desktop open.
            importWorldsZpool.
            installSSHKeys.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: unix\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         cmd = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche cmd.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         cmd_ <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche cmd cmd_.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         addArg: flag With: args = ( |
            | 
            (flag size < 3) || ((flag slice: 0 @ 2) != 'f_')
              ifTrue: [
                builtCommand: builtCommand, ' ', flag.
                ^ self].
            args size = 0 ifTrue: [
              builtCommand: builtCommand, ' -', (flag slice: 2 @ infinity).
              ^ self].
            builtCommand: builtCommand, ' -', (flag slice: 2 @ -1), ' ', args first asString.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         builtCommand <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         do = ( |
             r.
             tmp.
            | 
            tmp: os_file temporaryFileName.
            r: result copy.
            os command: '( ', builtCommand, ' ) ', 
                  '1> ', tmp, '.stdout 2> ', tmp, '.stderr' 
              IfFail: false.
            result stdout: (tmp, '.stdout') asFileContents.
            result stderr: (tmp, '.stdoerr') asFileContents.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         result = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> 'result' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals psyche cmd cmd_ result.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> 'result' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (0)'
        
         error <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> 'result' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> 'result' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         stderr <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> 'cmd_' -> 'result' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: InitializeToExpression: (\'\')'
        
         stdout <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         do = ( |
            | cmd_ do).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> 'cmd' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         undefinedSelector: sel Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
            | 
            _Clone 
              cmd_: (cmd_ copy addArg: sel With: args)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         importWorldsZpool = ( |
            | os command: 'zpool import worlds'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         installSSHKeys = ( |
            | 
            os command: 'mkdir /root/.ssh'.
            os command: 'cp /worlds/psyche/.ssh/* /root/.ssh/'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'ModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         pwd = ( |
            | 
            (os outputOfCommand: 'pwd' Timeout: 10 IfFail: [error: 'Can\'t find PWD']) shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: system status\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         runningJails = ( |
            | 
            sh: 'jls' ResultInMs: 100).
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
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startJailNamed: n InDir: d = ( |
             cmd.
            | 
            cmd: 'jail -cmr path="', d, '" name=', n, ' host.hostname=', n,  ' ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc'.
            sh: cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         startX = ( |
            | 
            os command: 'daemon /usr/local/bin/Xvnc :1 -geometry 1024x768 -depth 24 -SecurityTypes None,TLSNone'.
            process this sleep: 2000.
            os command: 'DISPLAY=:1 daemon /usr/local/bin/ratpoison'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'psyche' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         stopJailNamed: n = ( |
            | 
            sh: 'jail -r ', n. 
            sh: 'umount ', pwd, '/', n, '/dev'.
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
         'Category: boot\x7fModuleInfo: Module: psyche InitialContents: FollowSlot'
        
         welcomeMessage = ( |
            | 
            '\n\nWELCOME TO PSYCHE\n
            Version: ', version, '\n').
        } | ) 



 '-- Side effects'

 globals modules psyche postFileIn
