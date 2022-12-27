 '0.0.1'
 '
Copyright 2022 OurSelf-Systems.
See the LICENSE,d file for license information.
'
[ 
"prefileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot'
        
         persona = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules persona.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: persona InitialContents: InitializeToExpression: (\'
Copyright 2022 OurSelf-Systems.
See the LICENSE,d file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022 OurSelf-Systems.
See the LICENSE,d file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: InitializeToExpression: (\'0.0.1\')\x7fVisibility: public'
        
         revision <- '0.0.1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: InitializeToExpression: (\'persona\')'
        
         tree <- 'persona'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         persona = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'persona' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals persona.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: boot\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         boot = ( |
            | 
            startJailForXvnc.
            startJailForGit.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         pwd = ( |
            | 
            (os outputOfCommand: 'pwd' Timeout: 10 IfFail: [error: 'Can\'t find PWD']) shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: system status\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         runningJails = ( |
            | 
            sh: 'jls' ResultInMs: 100).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         sh: cmd = ( |
            | 
            os command: cmd).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         sh: cmd InJail: j = ( |
            | 
            sh: 'jexec ', j, ' ', cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         sh: cmd ResultInMs: ms = ( |
            | 
            os outputOfCommand: cmd Timeout: ms IfFail: [error: 'Cmd failed']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: jail - git\x7fComment: Initial version - no error checking\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         startJailForGit = ( |
            | 
            startJailNamed: 'jail_for_git' InDir: '$(pwd)/jail_for_git'.
            sh: 'mkdir -p /opt/Persona' InJail: 'jail_for_git'.
            sh: 'mount_nullfs ', pwd, ' ', pwd, '/jail_for_git/opt/Persona'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: jail - git\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         startJailForXvnc = ( |
            | 
            startJailNamed: 'jail_for_xvnc' InDir: '$(pwd)/jail_for_xvnc'.
            sh: 'daemonize /usr/local/bin/Xvnc :1 -geometry 1024x768 -depth 24 -SecurityTypes None,TSLNone -listen tcp' InJail: 'jail_for_xvnc'.
            process this sleep: 1000.
            sh: 'daemonize -E DISPLAY=:1 /usr/local/bin/ratpoison' InJail: 'jail_for_xvnc'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         startJailNamed: n InDir: d = ( |
             cmd.
            | 
            cmd: 'jail -cmr path="', d, '" name=', n, ' host.hostname=', n,  ' ip4=inherit allow.raw_sockets mount.devfs command=/bin/sh /etc/rc'.
            sh: cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: jail - git\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         stopJailForGit = ( |
            | 
            stopJailNamed: 'jail_for_git'.
            sh: 'umount ',  pwd, '/jail_for_git/opt/Persona'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: jail - git\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         stopJailForXvnc = ( |
            | 
            stopJailNamed: 'jail_for_xvnc'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'persona' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: persona InitialContents: FollowSlot'
        
         stopJailNamed: n = ( |
            | 
            sh: 'jail -r ', n. 
            sh: 'umount ', pwd, '/', n, '/dev'.
            self).
        } | ) 



 '-- Side effects'

 globals modules persona postFileIn
