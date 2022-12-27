 '0.0.1'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
[ 
"prefileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: persona InitialContents: FollowSlot'
        
         persona = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'persona' -> () ToBe: bootstrap addSlotsTo: (
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
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
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



 '-- Side effects'

 globals modules persona postFileIn
