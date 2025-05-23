 '0.0.9'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         firmware = bootstrap setObjectAnnotationOf: bootstrap stub -> 'firmware' -> () From: ( |
             {} = 'ModuleInfo: Creator: firmware.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'Category: caddyfile\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         caddyFilename = '/tmp/caddyFile'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'Category: caddyfile\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         caddyfile = bootstrap setObjectAnnotationOf: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( |
             {} = 'ModuleInfo: Creator: firmware caddyfile.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         asString = ( |
            | 
            header, 
            caddyConfigForUsers,
            footer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'Category: users\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         caddyConfigForUser: u IfAbsent: blk = ( |
            | 
            '' = u passwordHash ifTrue: [
              log warn: 'Skipping user ', u name asString, ' as empty password.'. ^ ''].
            '
              handle_path /', u name asString, '/* {
                reverse_proxy http://127.0.0.1:608', (desktopNumberForUser: u IfAbsent: [^ blk value]) asString, '
              }
              basic_auth /', u name asString, '/* bcrypt ', u name asString, ' {
                ', u name asString, ' ', u passwordHash, '
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'Category: users\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         caddyConfigForUsers = ( |
             c.
            | 
            c: caddyConfigForUser: users owner IfAbsent: ''.
            users team do: [|:u|
              c: c, caddyConfigForUser: u IfAbsent: ''].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         desktop: n = ( |
            | 
            '
              handle_path /', n asString, '/* {
                reverse_proxy http://127.0.0.1:608', n asString, '
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'Category: users\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         desktopNumberForUser: u IfAbsent: blk = ( |
            | ((u findFirstHandIfAbsent: [^ blk value]) winCanvasForHand display serverName slice: 1 @ infinity) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'Comment: This isn\'t used anymore, keeping around until new
caddyConfigForUsers works.\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         desktops = ( |
             s.
            | 
            s: ''.
            1 to: 5 Do: [|:n| s: s, (desktop: n)].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         footer = '
}
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         header = '
{
  auto_https off
}
:80 {
    bind unix//tmp/desktop.socket

'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'caddyfile' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'Category: world metadata\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         metadata = bootstrap setObjectAnnotationOf: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( |
             {} = 'ModuleInfo: Creator: firmware metadata.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         asDictionaryDo: blk = ( |
            | sync: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         filename = '/objects/metadata'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         readToDictionary: f = ( |
             d.
            | 
            d: dictionary copyRemoveAll.
            (f contents shrinkwrapped splitOn: '\n') do: [|:line. s |
              s: [|:o| ((line splitOn: '=') at: o) shrinkwrapped].
              d at: (s value: 0) Put: (s value: 1)].
            d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: firmware InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> 'metadata' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         writeDictionary: d ToFile: f = ( |
            | 
            f rewind.
            d keys do: [|:k|
              f write: k asString, ' = ', (d at: k) asString, '\n'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         reloadCaddy = ( |
            | 
            saveCaddyfile.
            os command: 'caddy reload --config ', caddyFilename, ' --adapter caddyfile'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'Category: caddyfile\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         saveCaddyfile = ( |
            | 
            caddyFilename setFileContentsTo: caddyfile asString. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         startCaddy = ( |
            | 
            os command: 'daemon caddy run --config ', caddyFilename, ' --adapter caddyfile'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'Category: xvnc\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         startXvncOn: slot = ( |
             n.
            | 
            n: slot asString.
            os command: 'daemon Xvnc :', n, ' -geometry 1000x7000 -depth 24 -SecurityTypes None'.
            "Pause until Xvnc has started "
            [ 0 = (os command: 'ls /tmp/.X11-unix/X', n, ' >/dev/null 2>&1 ')] whileFalse.
            os command: 'DISPLAY=:', n, ' daemon /usr/local/bin/ratpoison'.
            os command: 'daemon -f /opt/noVNC/utils/novnc_proxy --listen 608', n, ' --vnc :590', n.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         startup = ( |
            | 
            users owner passwordHash = '' ifTrue: [
              "We haven't set the owner password.
               Use the console password until it is set."
              metadata asDictionaryDo: [|:d|
                users owner passwordHash: 
                  (d at: 'consolePasswordHash' IfAbsent: '')]].
            1 to: 5 Do: [|:n| startXvncOn: n].
            saveCaddyfile.
            startCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         firmware = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules firmware.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\'This module is provided by the base
system. Filing this out is unlikely to do 
what you think it will.\')'
        
         myComment <- 'This module is provided by the base
system. Filing this out is unlikely to do 
what you think it will.'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            registerTree: 'firmware' At: '/tmp/firmware'.
            firmware startup.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\'0.0.9\')\x7fVisibility: public'
        
         revision <- '0.0.9'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'firmware' -> () From: ( | {
         'ModuleInfo: Module: firmware InitialContents: InitializeToExpression: (\'firmware\')'
        
         tree <- 'firmware'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> 'parent' -> () From: ( | {
         'Category: firmware\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         findFirstHandIfAbsent: blk = ( |
             h.
            | 
            desktop worlds do: [|:w|
              w hands do: [|:h|  
                self = h userInfo ifTrue: [^ h]]].
            blk value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> 'parent' -> () From: ( | {
         'Category: firmware\x7fComment: This is provided by the firmware
from the underlying system. 
IT IS PROVISIONAL - DONT USE THIS\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         password: p = ( |
             ph.
            | 
            ph: (os outputOfCommand: 'caddy hash-password -p ', p
                            Timeout: 10 * 1000
                             IfFail: raiseError).
            passwordHash: ph shrinkwrapped.
            firmware reloadCaddy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> 'parent' -> () From: ( | {
         'Category: firmware\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         passwordHash = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> 'parent' -> () From: ( | {
         'Category: firmware\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         passwordHash: h = ( |
            | _AddSlots: (| passwordHash |). passwordHash: h. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         attachCloseWindowForUserDialog: evt = ( |
             availableHands.
             availableUsers.
             chosenHand.
            | 
            hands size = 1 ifTrue: [
               userQuery report: 'Only the owner is connected'.
               ^ self].
            availableHands: (hands asSequence copyFilteredBy: [|:h| h userInfo name != users owner name]).
            availableUsers: availableHands copyMappedBy: [|:h| h userInfo name].
            chosenHand: userQuery
             askMultipleChoice: 'Which user?'
             Choices: availableUsers
             Results:  availableHands.
            safelyDoIfWorld: [ closeFromHand: chosenHand].
            firmware reloadCaddy.
            userQuery report: 'Access for ', chosenHand userInfo name, ' removed.'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: menu operations\x7fComment: The user chooses from a list of predefined usersProfiles in the team.
I then look for a X display on the local machine which doesn\'t already have a
Self window in this world open on it, and open a new Self window for that userProfile
on that display.\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         attachOpenWindowForUserDialog: evt = ( |
             availableDisplays.
             chosenDisplay.
             chosenUser.
             freeDisplays.
             usedDisplays.
            | 
            users team isEmpty ifTrue: [
               userQuery report: 'You have not defined any users'.
               ^ self].
            chosenUser: userQuery
             askMultipleChoice: 'Which user?'
             Choices: (users team copyMappedBy: [|:u| u name]) asVector
             Results: users team asVector.
            availableDisplays: (os outputOfCommand: 'ls /tmp/.X11-unix/' Delay: 100 IfFail: [
               (userQuery askYesNo: 'Could not get list of available displays. Retry?')
                  ifTrue: [^ attachOpenWindowForUserDialog: evt]
                   False: [^ self]]).
            availableDisplays: (availableDisplays shrinkwrapped splitOn: '\n') mapBy: [|:d| ':', (d slice: 1 @ infinity)].
            usedDisplays: hands copyMappedBy: [|:h| (h winCanvasForHand display originalName splitOn: '.') first].
            freeDisplays: availableDisplays difference: usedDisplays.
            freeDisplays isEmpty ifTrue: [userQuery report: 'There are no free displays.'. ^ self].
            chosenDisplay: freeDisplays first.
            addWindowOnDisplay: chosenDisplay Bounds: (0@0)##(3000@3000) User: chosenUser Limited: false.
            firmware reloadCaddy.
            reportThatUser: chosenUser CanAccessDisplay: chosenDisplay.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: firmware InitialContents: FollowSlot'
        
         reportThatUser: u CanAccessDisplay: d = ( |
            | 
            userQuery report: u name, ' may now connect on desktop /[world id]/desktop/', u name, '/'.
            self).
        } | ) 



 '-- Side effects'

 globals modules firmware postFileIn

