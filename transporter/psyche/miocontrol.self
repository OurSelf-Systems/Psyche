 '0.1.0'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         miocontrol = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'Category: internal\x7fComment: KEEP FOR LEGACY ACCESS
(DELETE WHEN REFACTOR COMPLETE)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nodes = ( |
            | system actionLogAdd: 'Something still calling nodes!'. system).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'Category: internal\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         servlet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol servlet.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         actionLog = ( |
            | 
            'Time now: ', time current printString, '<br><br>',
            (miocontrol system actionLog copy reverse joinUsing: '<br>')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         availableListFor: id = ( |
             av.
             aw.
             chk.
             s <- ''.
             selected <- 'selected'.
            | 
            nodes flushCaches.
            av: nodes available.
            aw: nodes awake.

            s: s, hr.
            s: s, '<div class="row"><div class="col-md-2">', (h2: 'Upload'), '</div><div class="col-md-10">'.
            s: s, '<form action="/upload" method="post" enctype="multipart/form-data">'.
            s: s, '<input name="file" type="file"><p><p>'.
            s: s, p: '<button type="submit" class="btn btn-outline-primary" name="action" value="upload">Upload OurSelf snapshot</button></form>
                  <p><i>(Snapshot file should be named user-name[-version].ourself)</i></p></div></div><hr>'.

            s: s, '<div class="row"><div class="col-md-2">', h2: 'Manage'.
            s: s, '</div><div class="col">'.
            s: s, '<form onSubmit="setTimeout(() => {document.getElementById(\'workingNotice\').removeAttribute(\'hidden\');}, 700);" name="do" action="/action" method="post" role="form"><fieldset>'.

               s: s, h2: small: 'Prototype snapshots:'.
               s: s, (p: i: '(Please copy before using)').
               s: s, '<div class="form-check">'.
               av do: [|:snap. l. state| 
                    (snap owner = 'prototype') ifTrue: [
                      l: snap toSlashName. 
                      state: aw includes: snap toSlashName.
                      s: s, (line: l Id: id State: state Snap: snap)]].
               s: s, '</div>'.

            " If showing page for admin, show all running (including otherwise anonymous
              'try' snapshots that aren't in the shared accounts directory, ie
              that are awake but not showing up available. "
            (id = 'admin') ifTrue: [
               s: s, h2: small: 'Awake trials:'.
              s: s, '<div class="form-check">'.
              aw do: [|:snap. l. state. sd| 
                sd: miocontrol system snapshotDescriptor copy readFromSlashName: snap IfFail: miocontrol system snapshotDescriptor copy.
                l: snap. 
                state: aw includes: snap.
                (sd owner = 'try') ifTrue: [
                  s: s, (line: l Id: id State: state Snap: sd)]].
              s: s, '</div>'].

            s: s, h2: small: 'My snapshots:'.
            s: s, '<div class="form-check">'.
            av do: [|:snap. l. state| 
              (id = 'admin') || (snap owner = id) ifTrue: [
                 (snap owner != 'trash') && (snap owner != 'prototype') ifTrue: [
                   l: snap toSlashName. 
                   state: aw includes: l.
                   s: s, (line: l Id: id State: state Snap: snap)]]].
            s: s, '</div>'.

            s: s, h2: small: 'In Bin:'.
            s: s, (p: i: '(Please move from Bin before using)').
            s: s, '<div class="form-check">'.
            av do: [|:snap. l. state| 
              (snap owner = 'trash') ifTrue: [
                l: cleanTrashedSnapshotName: snap toSlashName. 
                state: aw includes: snap toSlashName.
                (id = 'admin') || ((l splitOn: '/') first = id) ifTrue: [
                  s: s, (line: l Id: id State: state Snap: snap)]]].
            s: s, '</div>'.

            s: s, '</div><div class="col">'.

            s: s, h2: small: 'Actions:'.
            s: s, '<div id="workingNotice" class="alert alert-primary" role="alert" hidden>
                         <div class="spinner-border spinner-border-sm text-primary role="status"><span class="sr-only">Please wait...</spam></div>
                         Working, please wait...</div>'.

            s: s, p: '<button type="submit" class="btn btn-outline-primary" name="action" value="wake">Wake</button> '.
            s: s,  '
                <label for="username1" class="sr-only">Username</label> 
                <input class="form-control" id="username1" placeholder="Enter username" name="username" type="text">
                <label for="password1" class="sr-only">Password</label>
                <input class="form-control" id="password1" placeholder="Password" name="password" type="password">
                <label for="chosenNode" class="sr-only">Node</label>
                <select class="form-control" id="chosenNode" name="chosenNode">'.
                     nodes nodes all do:  [|:n|
                        s: s, '<option value="', n id, '" ', selected, '>', n location, '</option>'.
                        selected: ''].
                 s: s, '</select>'.

            s: s, p: '<button type="submit" class="btn btn-outline-primary" name="action" value="sleep">Sleep</button>'.
            s: s, hr.

            s: s, p: '<button type="submit" class="btn btn-outline-primary" name="action" value="restart">Restart</button>'.
            s: s, hr.

            s: s, p: '<button type="submit" class="btn btn-outline-primary" name="action" value="copy">Copy</button> '.
            s: s, '<button type="submit" class="btn btn-outline-primary" name="action" value="rename">Rename</button> '.
            s: s,  '<label for="copymove" class="sr-only">New name</label> 
                <input class="form-control" id="copymove" placeholder="Enter new name" name="copymove" type="text">
              '.
            s: s, p: '<button type="submit" class="btn btn-outline-primary" name="action" value="download">Download</button>'.
            s: s, hr.

            s: s, p: '<button type="submit" class="btn btn-outline-danger" name="action" value="bin">Move to Bin</button>'.
            (id = 'admin') ifTrue: [
              s: s, p: '<button type="submit" class="btn btn-outline-danger" name="action" value="delete">Delete (Admin only)</button>'].
            s: s, '</fieldset></form>'.
            s: s, '</div></div>', hr.
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         b: s = ( |
            | '<b>', s value, '</b>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         binSnapshot: wc = ( |
             fail.
             from.
             id.
             to.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Move to Bin failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            from: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            to: 'trash/', (from copy replace: '/' With: ':').
            id: extractSessionID: wc req.

            (from != '') 
              ifTrue: [
                  nodes moveFrom: from To: to IfFail: [|:v| ^ fail value: v ].
                       wc res statusCode: '303'.
                       wc res location: '/manage/'.
                       self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cleanCookies: res = ( |
            | res rawHeaderFields filterBy: [|:l| l x != 'Set-Cookie']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cleanTrashedSnapshotName: n = ( |
             c.
             s.
            | 
            c: n slice: 'trash/' size @ infinity.
            s: c splitOn: ':'.
            c: (s at: 0) , '/', (s at: 1).
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         consoleLink: l = ( |
            | ' <a href="https://', (nodes nodeForSnap: l IfAbsent: [^ 'No console']) address, '/console/', l, '">console</a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         copy: wc = ( |
             fail.
             from.
             id.
             to.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Copy failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            from: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find from snapshot name in request'].
            to:   wc req variableAt: 'copymove'   IfFail: [^ fail value: 'Could not find to snapshot name in request'  ].
            id: extractSessionID: wc req.

            (from != '') && 
            (to   != '') && 
            (id   != '')  
              ifTrue: [ 
                  ((to slice: 0 @ id size) != id) && (id != 'admin') ifTrue: [^ fail value: 'New name must begin with ', id, '/']. 
                  (from slice: 0 @ 'trash' size) = 'trash' ifTrue: [^ fail value: 'Please move snapshots out of trash'].
                  (id != 'admin') ifTrue: [
                      (system availableForId: id) size >= 5 ifTrue: [^ fail value: 'Only five snapshots per user for the moment.']].
                  system copyFrom: from To: to IfFail: [|:v| ^ fail value: v ].
                  wc res statusCode: '303'.
                  wc res location: '/manage/'.
                  self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         copyLink = ( |
            | 
            '<form action="/copySnapshot" id="copySnapshot" method="post">',
            'Copy snapshot: <input type="text" name="from">\n',
            '           as: <input type="text" name="to">\n',
            '               <input type="submit" value="Copy">',
            '</form>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         deleteLink: n = ( |
            | 
            ' <form action="/delete" id="deleteLink-', n, '" method="post" style="display: none;">',
            '<input type="text" name="snapshot" value="', n, '" /></form>',
            '<a href="javascript:;" onclick="javascript: document.getElementById(\'deleteLink-', n , '\').submit()"><font color="red">delete</font></a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         deleteSnapshot: wc = ( |
             fail.
             id.
             snap.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Delete failed.\n', reason, '\n<a href="/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            snap: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            id: extractSessionID: wc req.

            (id   != 'admin') ifTrue: [ ^ fail value: 'Only Admin can delete' ].

            (snap != '') && 
            (id   != '')  
              ifTrue: [
                  nodes delete: snap IfFail: [|:v| ^ fail value: v ].
                       wc res statusCode: '303'.
                       wc res location: '/manage/'.
                       self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         desktopLink: l = ( |
            | ' <a href="https://', (nodes nodeForSnap: l IfAbsent: [^ 'No desktop']) address, '/desktop/', l, '">desktop</a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         divContainer: t = ( |
            | 
            '<div class="container">', t, '</div>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         doAction: wc = ( |
             action.
             fail.
             id.
             snap.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Action failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            action: wc req variableAt: 'action' IfFail: [^ fail value: 'Could not find requested action in request'].
            id: extractSessionID: wc req.

            " No snapshot name for upload " 
            'upload' = action ifTrue: [ uploadSnapshot: wc. ^ self ]. 

            case if: [ 'wake' = action      ] Then: [ wake: wc           ]
                 If: [ 'try' = action       ] Then: [ try: wc            ]
                 If: [ 'sleep' = action     ] Then: [ sleep: wc          ]
                 If: [ 'restart' = action   ] Then: [ restart: wc        ]
                 If: [ 'rename' = action    ] Then: [ rename: wc         ]
                 If: [ 'copy' = action      ] Then: [ copy: wc           ]
                 If: [ 'download' = action  ] Then: [ download: wc       ]
                 If: [ 'bin' = action       ] Then: [ binSnapshot: wc    ]
                 If: [ 'delete' = action    ] Then: [ deleteSnapshot: wc  ]
               Else: [ 
                    snap: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find from snapshot name in request'].
                    wc res write: snap, ' ', action, ' ', id ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         doPOST: con OnTimeout: blk = ( |
             k.
             p.
             w.
            | 
            [ "So senders works"
              handlePost: con.
              kill: self After: self.
            ].
            k: (| p* = traits oddball.
                kill: ps After: ms = (
                 process this sleep: ms.
                 ps abortIfLive.
                 self )
               |).
            p: (message copy receiver: self 
                             Selector: 'handlePOST:' 
                                 With: con) fork resume.
            w: (message copy receiver: k 
                             Selector: 'kill:After:' 
                                 With: p
                                 With: postTimeout) fork resume.
            [p waitForDeath returnValue]
               onReturn: [|:r|
                 w abortIfLive.
                 r ifNil: [^ blk value]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         download: wc = ( |
             cleanName.
             fail.
             id.
             snap.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Download failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            snap: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            id: extractSessionID: wc req.

            (snap != '') && 
            (id   != '')  
              ifTrue: [| s. addr |
                   (nodes isAwake: snap) ifTrue: [^ fail value: 'Cannot download world unless it is asleep'].
                   s: nodes nodes snapshots getSnapshotDescriptorFor: snap IfAbsent: [^ fail value: 'Could not find snapshot descriptor'].
                   addr: nodes nodes snapshots publishSnapshotDescriptor: s IfFail: [^ fail value: 'Could not publish snapshot'].
                    wc res contents: '<pre>DOWNLOAD\n\nDownload your Self world <a href="https://ourself.io/download/', addr, 
                        '">here</a>.\n\n(This link will last about 20 minutes)\n\n<a href="/manage/">Go back.</a></pre>'
                   ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         downloadLink: l = ( |
            | 
            ' <a href="/download/', l, '">download</a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         extractName: n IfFail: fb = ( |
             x.
            | 
            x: extractSnapshotDescriptor: n IfFail: [|:f| ^ fb value: f]. 
            (x owner), '.', (x name)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         extractSessionID: rq = ( |
             c.
            | 
            c: rq cookies.
            c isEmpty ifTrue: [^ ''].
            c: c first values at: 'selfsession' IfAbsent: [^ ''].
            c = 'deleted' ifTrue: [^ ''].
            miocontrol sessions idFor: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         extractSnapshotDescriptor: n IfFail: fb = ( |
             sd.
             x.
            | 
            sd: miocontrol system snapshotDescriptor copy.
            x: n breakOnFirstSubstring: '.'.
            (x at: 1) != 'ourself' ifTrue: [^ fb value].
            x: x at: 0.
            x: x asTokensSeparatedBySubstring: '-'.
            (x size > 3) || (x size < 2) ifTrue: [^ fb value]. 
            sd owner: x at: 0.
            sd name: x at: 1.
            sd).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         footer = ( |
            | 
            '</div><!--
            <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
            <script src="https://netdna.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
            </body></html>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: get\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         fourOhFour: wc = ( |
            | 
            wc res contents: (header: 'Not Found' UserID: ''), footer.
            wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         h2: t = ( |
            | '<h2>', t, '</h2>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         h3: t = ( |
            | '<h3>', t, '</h3>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: private'
        
         handle: conn = ( |
            | 
            setCookieOn: conn res For: (extractSessionID: conn req).
            ifMaintenance: [handleMaintenance: conn. ^ self].
            conn req 
               ifGET: [handleGET:  conn ]
              IfPOST: [doPOST: conn OnTimeout: [postTimeout: conn]]
                Else: [handleGET:  conn ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: private'
        
         handleGET: con = ( |
             id.
             u.
            | 
            id: extractSessionID: con req.
            u: con req url. 
            case if: [ (u = '/') || (u = '')           ] Then: [    index: con ]
                 If: [ u matchesPattern: '/download/*' ] Then: [ download: con ]
                 If: [ u matchesPattern: '/install/*'  ] Then: [  install: con ]
                 If: [ u matchesPattern: '/manage/*'   ] Then: [   manage: con ]
               Else: [ fourOhFour: con ].
            con res rawHeaderFields add: 'Cache-Control' @ 'no-cache'.
            con).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: maintenance\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: private'
        
         handleMaintenance: con = ( |
            | 
            con res write: 'Sorry, we are down for maintenance. Please try again later.'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         handlePOST: wc = ( |
             u.
            | 
            u: wc req url.
            case if: [ u = '/action'          ] Then: [       doAction: wc ]
                 If: [ u = '/sleep'           ] Then: [          sleep: wc ]
                 If: [ u = '/wake'            ] Then: [           wake: wc ]
                 If: [ u = '/login'           ] Then: [          login: wc ]
                 If: [ u = '/logout'          ] Then: [         logout: wc ]
                 If: [ u = '/delete'          ] Then: [ deleteSnapshot: wc ]
                 If: [ u = '/copySnapshot'    ] Then: [   copySnapshot: wc ]
                 If: [ u = '/moveSnapshot'    ] Then: [   moveSnapshot: wc ]
                 If: [ u = '/upload'          ] Then: [ uploadSnapshot: wc ]
                 If: [ u = '/register'        ] Then: [       register: wc res For: wc req ]
                 If: [ u = '/tell'            ] Then: [           tell: wc ]
                 If: [ u = '/trial'           ] Then: [          trial: wc ]
                 If: [ u = '/resetPassword'   ] Then: [  resetPassword: wc ]
             Else: [ fourOhFour: wc ].
            wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         header: t UserID: id = ( |
            | 
            '
            <!DOCTYPE HTML>
            <html lang="en">
            <head>
            <meta charset="utf-8">
            <title>', t, ' - ourself.io</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Bootstrap styles -->
            <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
            <style>
              body { font-family: Verdana, Helvetica, Arial, sans-serif; }
            </style>
            </head>
            <body>
            <div class="container mt-4 mb-4 bg-light">
            <div class="row"><div class="col-md">
            <h1>', t, '<br><small>OurSelf.io - your online Self</small></h1>
            <p>[ <a href="/">Home</a> | <a href="/manage/">Manager</a> ] </p>
            </div>
            <div class="col-md">
            ',
            ('' = id ifTrue: [login] False: [(divContainer: p: ('Logged in as: <b>', id, '</b>', (logoutLink: id)))]),
            '</div></div></div>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         hr = ( |
            | '<hr>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         i: t = ( |
            | '<i>', t, '</i>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: maintenance\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         ifMaintenance: blk = ( |
            | maintenanceMode ifTrue: [blk value] False: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: get\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         index: wc = ( |
             chk.
             id.
             r.
            | 
            id: extractSessionID: wc req.
            r: wc res.
            r write: header: 'Welcome' UserID: id. 
            r write: '<div class="container">'.
            r write: '<div class="row><class="col">
              <p>Welcome to OurSelf.io! We are building an online home for Self System worlds, a place where you and your team can 
              develop and run <a href="https://selflanguage.org/">Self</a> applications in a collaborative environment.</p>

              <p>We are open for invited early adopters at the moment. If that is you, please <a href="/manage/">register here</a> for your account!</p>'.
            r write: '</div><div class="row">'.
            r write: '<div class="col-md">'.
            r write: trialCard.
            r write: '</div>'.
            r write: '<div class="col-md">'.
            r write: newsList.
            r write: '</div></div>'.
            r write: footer.
            wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: get\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         install: wc = ( |
             fail.
             id.
             snap.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Install failed.\n', reason, '\n<a href="/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            snap: wc req url copyFrom: 9 UpTo: wc req url size.
            id: extractSessionID: wc req.

            (snap != '') && 
            (id   != '')  
              ifTrue: [
                  nodes install: snap For: id IfFail: [|:v| ^ fail value: v ].
                       wc res statusCode: '303'.
                       wc res location: '/'.
                       self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         line: l Id: id State: state Snap: sdesc = ( |
             snap.
            | 
            snap: sdesc toSlashName.

                '<div class="row"><input class="form-check-input" type="radio" name="node" id="', snap, '" value="', snap, '"> ',
                '<label class="form-check-label" for="', snap, '">',
                (state ifTrue: '<font color="green">' False: ''), l, (state ifTrue: [' in ', (nodes nodeForSnap: snap IfAbsent: 'Unknown') location, '</font>'] False: ''), 
                (state ifTrue: [' ', (desktopLink: l), ' ', (consoleLink: l)] False: ''),
                '</label></div>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         login = ( |
            | 
            '<form name="login" action="/login" method="post" role="form" class="form-inline">
              <div class="form-group">
                <label for="username1" class="sr-only">Username</label> 
                <input class="form-control form-control-sm" id="username1" placeholder="Enter username" name="username" type="text">
                &nbsp;<label for="password1" class="sr-only">Password</label>
                <input class="form-control form-control-sm" id="password1" placeholder="Password" name="password" type="password">
                &nbsp;<button type="submit" class="btn btn-primary">Log in</button>
              </div>
             </form>
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         login: wc = ( |
             fail.
             p.
             suc.
             u.
            | 
            suc: [
               wc res location: '/manage/'.
               wc res statusCode: '303'.
               self].

            fail: [|:reason|
               process this sleep: 5000. "Slow down guessing"
               wc res contents: '<pre>Login failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self].

            u: wc req variableAt: 'username' IfFail: [^ fail value: 'Could not find username in request.'].
            p: wc req variableAt: 'password' IfFail: [^ fail value: 'Could not find password in request.'].

            (miocontrol system users password: p IsCorrectFor: u)
               ifTrue: [ cleanCookies: wc res. 
                         setCookieOn: wc res For: u. 
                         suc value ]
                False: [ fail value: 'Username and password incorrect.']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         logout: wc = ( |
            | 
            cleanCookies: wc res. 
            wc res rawHeaderFields add: 'Set-Cookie' @ 'selfsession=deleted'.
            wc res location: '/manage/'.
            wc res statusCode: '303'.
            wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         logoutLink: id = ( |
            | 
            '<form action="/logout" id="logoutLink" method="post" class="form-inline"><button type="submit" name="id" value="', id, '" class="btn btn-outline-primary btn-sm">Logout</button></form>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: maintenance\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (false)'
        
         maintenanceMode <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: get\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         manage: wc = ( |
             fail.
             id.
             u.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Something went wrong\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            id: extractSessionID: wc req.

            wc res contents: (
             (header: 'Management Console' UserID: id), 
             ('' = id ifTrue: [registrationForm] False: [
                 (divContainer: p: ('Logged in as: <b>', id, '</b>', (logoutLink: id))), 
                 [
                      u: miocontrol system users userNamed: id IfAbsent: [^ fail value:' Could not find user in manage: wc'].
                      (u isCorrect: 'resetPassword') ifTrue: [passwordResetForm]
                                                      False: ''
                 ] value,
                 (divContainer: hr),
                 (divContainer: welcomeMessage),
                 (divContainer: availableListFor: id)]), 
             ('admin' = id ifTrue: [divContainer: p: '<b>Users</b><p>', userList] False: ''),
             ('admin' = id ifTrue: [divContainer: p: '<b>Log</b><p>', actionLog] False: ''),
             footer).
            wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         moveLink = ( |
            | 
            '<form action="/moveSnapshot" id="moveSnapshot" method="post">',
            'Move snapshot: <input type="text" name="from">\n',
            '           to: <input type="text" name="to">\n',
            '               <input type="submit" value="Move">',
            '</form>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         newsList = ( |
            | 
            '<h2>News</h2>',
            (p: (b: '1 March 2022'), ' - London node is now online.'),
            '<!-- ',
            (p: (b: '20 December 2020'), ' - We\'ve made improvements to the demo desktop - try it out today!'),
            (p: (b: '25 November 2020'), ' - Open to all, OurSelf trial desktops no longer need an invite!'),
            (p: (b: '20 November 2020'), ' - Backend changes: sshfs deprecated as unreliable. Using xfs snapshots instead.'),
            (p: (b: '14 November 2020'), ' - Lucky early users can now register for accounts to run Self worlds without time limits!'),
            (p: '<b>31 May 2020</b> - Ourself.io is now workable from tablets and phones with soft keyboards.'),
            (p: '<b>12 April 2020</b> - Hello Tokyo!'),
            (p: '<b>10 April 2020</b> - a significant backend reworking means we now have a choice of servers to reduce latency. 
                            Sydney and Silicon Valley so far, more to come.'),
            (p: '<b>21 February 2020</b> - trial world now has fonts working, at least oldstyle bitmap X11 fonts!'),
            (p: '<b>17 February 2020</b> - backend is now a little bit more safe, concurrency-wise'),
            (p: '<b>1 August 2019</b> - multiple users can now collaborate on a Self world.'),
            (p: '<b>12 July 2019</b> - more boring changes behind the scenes to improve robustness'),
            (p: '<b>7 July 2019</b> - changes behind the scenes to improve security of websockets and prepare for multi-user worlds.'),
            (p: '<b>1 July 2019</b> - improvements to cleanup of expired sessions, and to robustness of starting worlds.'),
            (p: '<b>28 June 2019</b> - OurSelf opened to public to rapturous applause.'),
            ' --> ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nodes = ( |
            | 
            miocontrol system).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         p: t = ( |
            | 
            '<p>', t value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         passwordResetForm = ( |
            | 
            divContainer: '
            <p>
            <div class="card bg-warning border-warning mg-3"><div class="card-body">
            <h2 class="card-title">Reset Password</h2>
            <form name="register" action="/resetPassword" method="post" class="form-horizontal"> 
              <div class="form-group">
                <label for="password2" class="col-sm-2 control-label">New Password</label>
                <div class="col-sm-10">
                  <input class="form-control" id="password2" placeholder="Password" name="password" type="password">
                </div>
              </div>
              <div class="form-group">
                <label for="password3" class="col-sm-2 control-label">New Password (repeat)</label>
                <div class="col-sm-10">
                  <input class="form-control" id="password3" placeholder="Password again" name="password2" type="password">
                </div>
              </div>
               <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary">Change password</button>
                </div>
              </div>
            </form>
            </div></div>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Comment: 5 minute timeout\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         postTimeout = 300000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         postTimeout: con = ( |
             r.
            | 
            r: con res. 
            r contents: ''. "Reset removing any partial page"
            r write: header: 'OurSelf.io' UserID: ''. 
            r write: p: 'Sorry, we weren\'t able to complete your requested action.'.
            r write: p: 'Reason: We timed out.'.
            r write: footer.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         register: res For: req = ( |
             e.
             fail.
             i.
             p.
             p2.
             u.
            | 
            fail: [|:reason|
               res contents: '<pre>Registration failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               res statusCode: '200'.
               self].

            u:  req variableAt: 'username'   IfFail: [^ fail value: 'Please provide a username.'].
            e:  req variableAt: 'email'      IfFail: [^ fail value: 'Please provide an email address.'].
            p:  req variableAt: 'password'   IfFail: [^ fail value: 'Please provide a password.'].
            p2: req variableAt: 'password2'  IfFail: [^ fail value: 'Please provide matching passwords.'].
            i:  req variableAt: 'invitation' IfFail: [^ fail value: 'Please provide your invitation.'].

            u = '' ifTrue: [^ fail value: 'Please provide a username.'].
            e = '' ifTrue: [^ fail value: 'Please provide an email address.'].
            (e includes: '@') ifFalse: [^ fail value: 'Please provide a valid email address.'].
            p = '' ifTrue: [^ fail value: 'Please provide a password.'].
            p != p2 ifTrue: [^ fail value: 'Please provide matching passwords'].
            i != 'ourselves' ifTrue: [^ fail value: 'Incorrect invitation.'].

            (miocontrol system users validUsername: u) ifFalse: [^ fail value: 'Please provide a username made up of characters and numbers only.'].

            miocontrol system users
                registerUser: u 
                       Email: e 
                    Password: p
                      IfFail: [^ fail value: 'Username already used. Please use another name.'].

            cleanCookies: res. 
            setCookieOn: res For: u.
            res location: '/manage/'.
            res statusCode: '303'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         registrationForm = ( |
            | 
            divContainer: 

            '<h2>Not yet registered?</h2>

            <p>OurSelf.io is open as a limited early stage preview for invited users. If you have an invite, please sign up below! If you would like an invite, please ask on the <a href="http://lists.selflanguage.org/mailman/listinfo/self-interest">Self
            mailing list</a>.</p>

            <div class="row">
              <div class="col-md-8">


            <p>
            <form name="register" action="/register" method="post" class="form-horizontal"> 
              <div class="form-group">
                <label for="username2" class="col-sm-2 control-label">Username</label> 
                <div class="col-sm-10">
                  <input class="form-control" id="username2" placeholder="Enter username" name="username" type="text">
                </div>
              </div>
              <div class="form-group">
                <label for="email" class="col-sm-2 control-label">Email</label> 
                <div class="col-sm-10">
                  <input class="form-control" id="username2" placeholder="Enter email address" name="email" type="email">
                </div>
              </div>
              <div class="form-group">
                <label for="password2" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input class="form-control" id="password2" placeholder="Password" name="password" type="password">
                </div>
              </div>
              <div class="form-group">
                <label for="password3" class="col-sm-2 control-label">Password (repeat)</label>
                <div class="col-sm-10">
                  <input class="form-control" id="password3" placeholder="Password again" name="password2" type="password">
                </div>
              </div>
              <div class="form-group">
                <label for="invitation" class="col-sm-2 control-label">Invitation</label> 
                <div class="col-sm-10">
                  <input class="form-control" id="invitation" placeholder="Enter invitation" name="invitation" type="text">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </div>
            </form>
            </p>

            </div>
            <div class="col-md-4"> </div>
            </div>
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         rename: wc = ( |
             fail.
             from.
             id.
             to.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Rename failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            [^ fail value: 'Move not yet implemented'].

            from: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            to: wc req variableAt: 'copymove' IfFail: [^ fail value: 'Could not find new name in request'].
            id: extractSessionID: wc req.

            (from != '') && 
            (to   != '') && 
            (id   != '')  
              ifTrue: [
                  (id != 'admin') && ((to slice: 0 @ id size) != id) ifTrue: [^ fail value: 'New name must begin with ', id, '/'].
                  nodes moveFrom: from To: to IfFail: [|:v| ^ fail value: v ].
                       wc res statusCode: '303'.
                       wc res location: '/manage/'.
                       self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         resetPassword: wc = ( |
             fail.
             id.
             p.
             p2.
             u.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Password reset failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            id: extractSessionID: wc req.

            (id = '') ifTrue: [^ fail value: 'Please login'].
            p:  wc req variableAt: 'password'   IfFail: [^ fail value: 'Please provide a password.'].
            p2: wc req variableAt: 'password2'  IfFail: [^ fail value: 'Please provide matching passwords.'].
            p = '' ifTrue: [^ fail value: 'Please provide a password.'].
            p != p2 ifTrue: [^ fail value: 'Please provide matching passwords'].

            u: miocontrol system users userNamed: id IfAbsent: [^ fail value:' Could not find user in resetPassword: wc'].
            u password: p.
            u logMyself.
            miocontrol system sendTelegramMessage: 'Password reset for: ', u name.
            wc res statusCode: '303'.
            wc res location: '/manage/'.
             self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         restart: wc = ( |
             fail.
             id.
             snap.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Restart failed.\n', reason, '\n<a href="/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            snap: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request (restart: wc)'].
            id: extractSessionID: wc req.

            (snap != '') && 
            (id   != '')  
              ifTrue: [
                  nodes restart: snap IfFail: [|:v| ^ fail value: v ].
                       wc res statusCode: '303'.
                       wc res location: '/manage/'.
                       self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         setCookieOn: res For: id = ( |
            | 
            id != '' ifTrue: [
            res rawHeaderFields add: 'Set-Cookie' @ ('selfsession=', (miocontrol sessions cookieFor: id))]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sleep: wc = ( |
             fail.
             id.
             snap.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Sleep failed.\n', reason, '\n<a href="/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            snap: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            id: extractSessionID: wc req.

            (snap != '') && 
            (id   != '')  
              ifTrue: [
                  nodes sleep: snap IfFail: [|:v| ^ fail value: v ].
                       wc res statusCode: '303'.
                       wc res location: '/manage/'.
                       self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sleepLink: n = ( |
            | 
            '<form action="/sleep" id="sleepLink-', n, '" method="post" style="display: none;"><input type="text" name="snapshot" value="', n, '" /></form> <a href="javascript:;" onclick="javascript: document.getElementById(\'sleepLink-', n , '\').submit()">sleep</a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         small: t = ( |
            | '<small>', t, '</small>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         system = ( |
            | miocontrol system).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         tell: wc = ( |
             fail.
             fulls.
             id.
             m.
             r.
             s.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Send of message failed.\n', reason, '\n<a href="/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            id: extractSessionID: wc req.

            m: wc req variableAt: 'tellMsg'  IfFail: [^ fail value: 'Could not find message in request'].
            s: wc req variableAt: 'snapshot' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            m = '' ifTrue: [^ fail value: 'Empty message'].

            id = 'admin' ifTrue: [fulls: s] False: [ fulls: s, '.', id].
            r: nodes tell: fulls To: m.
            r = '' ifFalse: [^ fail value: r].

            wc res location: '/look/', s. 
            wc res statusCode: '303'.
            wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         textBox: sn = ( |
            | 
            '
            <form name="tell" action="/tell" method="post"> 
            <input name="tellMsg" type="text">
            <input name="snapshot" type="hidden" value="', sn, '">
            <input type="submit" value="Send">
            </form>
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         trial: wc = ( |
             n.
             nd.
             r.
             w.
            | 
            r: wc res.

            [
            (wc req variableAt: 'invite' IfFail: 'bad_invite') = 'morph'
              ifFalse: [
               r write: header: 'OurSelf.io &gt; Try' UserID: ''.
               r write: '<div class="container">'.
               r write: h2: 'Failure :('.
               r write: p: 'I\'m sorry, you need a valid invite.'.
               r write: p: 'Please ask on the Self mailing list.'.
               r write: '</div>'.
               r write: footer.
               ^ self].
            ].

            nd: nodes nodes named: (wc req variableAt: 'node' IfFail: 'sjo').

            n: nodes safeAccess.
            w: n startTryOnNode: nd IfFail: [|:e| 
               r write: header: 'OurSelf.io &gt; Try' UserID: ''.
               r write: '<div class="container">'.
               r write: h2: 'Failure :('.
               r write: p: 'I\'m sorry, we failed to start a Self World for you.'.
               r write: p: '[ ', e, ' ]'.
               r write: '</div>'.
               r write: footer.
               ^ self].

            r write: header: 'OurSelf.io &gt; Try' UserID: ''.
            r write: '<div class="container">'.
            r write: h2: 'Success!'.
            r write: p: 'We have started Self world "', w, '" in ', nd location.
            r write: p: 'Your console is at: <a href="https://', nd id, '.ourself.io/console/', w, '/">https://', nd id, '.ourself.io/console/', w, '/</a>, with username "guest", password "password"'.
            r write: p: 'Your desktop is at: <a href="https://', nd id, '.ourself.io/desktop/', w, '/">https://', nd id, '.ourself.io/desktop/', w, '/</a>, with password "password"'.
            r write: p: 'Your world will be stopped sometime after 20 minutes, and no state will be saved.'.
            r write: '</div>'.
            r write: footer.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         trialCard = ( |
            | 
            '
              <div class="card bg-light border-warning mg-3"><div class="card-body">
                <h2 class="card-title">Trial</h2>
                <p class="card-text">Click below for a 5 minute trial of the <a href="https://selflanguage.org/">Self System</a>. You will get a link to a Self console, and to 
                  a morphic desktop, as well as a username/password to log on.</p>
                <p class="card-text">There are a limited set of Self worlds that can
                  run at the same time, so if you can\'t get a world, then
                  please try again later. It should work on any recent-ish web browser.</p>

                <form onSubmit="setTimeout(() => {document.getElementById(\'workingNotice\').removeAttribute(\'hidden\');}, 700);" name="trial" action="/trial" method="post" role="form"><fieldset>

                <h3>1. Choose a location near you:</h3>
            ', [|chk. s |
                  s: ''.
                  chk: ' checked=checked '.
                  system nodes all do:  [|:n|
                       s: s, ('<input type="radio" id="', n id, '" name="node" value="', n id, '" ', chk, '> ').
                       chk:''.
                       s: s, '<label for="', n id, '">', n location, '</label><br>'].
                  s
                ] value,
            '
               <h3>2. Try Self!</h3>
               <p><input type="submit" value="Try Self">
                  <div id="workingNotice" class="alert alert-primary" role="alert" hidden>
                  <div class="spinner-border spinner-border-sm text-primary role="status"><span class="sr-only">Please wait...</spam></div>
                         Working, please wait...</div>
               </fieldset></form>
               </div></div>
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         uploadLink = ( |
            | 
            ' <a href="upload.html">Upload new snapshot</a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         uploadSnapshot: wc = ( |
             f.
             fail.
             id.
             sd.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Upload failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self].

            [^ fail value: 'NYI'].

            f: wc req fileUploadHackIfFail: [^ fail value: 'SDIUFH'].
            sd: extractSnapshotDescriptor: f name IfFail: [^ fail value: 'Bad name: ', f name].
            id: extractSessionID: wc req.

            "Can only upload to own account"
            (sd owner != id) && (id != 'admin') ifTrue: [^ fail value: 'Incorrect upload name (should be "account-name.ourself")'].

            "Do nothing because we're still working on uploading correctly!"
            (id   != '')  
              ifTrue: [nodes addSnapshot: f file Named: sd IfFail: [|:e| ^ fail value: e]]
               False: [^ fail value: 'Unknown error'].
            [wc res contents: '<pre>UPLOAD NOT YET IMPLMENTED\n\nWe are still making this feature. Thank you.\n\n<a href="/manage/">Go back</a></pre>'].
            wc res contents: '<pre>UPLOADED\n\nThe snapshot ', sd toSlashName, ' has been uploaded. Thank you.\n\n<a href="/manage/">Go back</a></pre>'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         userList = ( |
            | 
            (miocontrol system users allUsernames copy mapBy: [|:un. u|
              u: miocontrol system users userNamed: un IfAbsent: [^ 'Users broken'].
              u name, ' &lt;', u email, '&gt;;']) joinUsing: '<br>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: post\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wake: wc = ( |
             chosenNode.
             fail.
             id.
             password.
             snap.
             username.
            | 
            fail: [|:reason|
               wc res contents: '<pre>Wake failed.\n', reason, '\n<a href="/manage/">Try again.</a></pre>'.
               wc res statusCode: '200'.
               self]. 

            snap: wc req variableAt: 'node' IfFail: [^ fail value: 'Could not find snapshot name in request'].
            username: wc req variableAt: 'username' IfFail: [^ fail value: 'Could not find username in request'].
            password: wc req variableAt: 'password' IfFail: [^ fail value: 'Could not find password in request'].
            (password size = 6) ifFalse: [^ fail value: 'Password must be 6 characters long. Sorry :('].
            chosenNode: wc req variableAt: 'chosenNode' IfFail: [^ fail value: 'Could not find chosen node in request'].
            id: extractSessionID: wc req.

            (snap slice: 0 @ 10) = 'prototype/' ifTrue: [^ fail value: 'Cannot start a prototype. Copy it first!'].
            (snap slice: 0 @ 6) =  'trash/'     ifTrue: [^ fail value: 'Cannot start a world in the trash. Move it first!'].

            (snap != '') && 
            (id   != '')  
              ifTrue: [
                  (id != 'admin') && ((system awakeForId: id) size > 0) ifTrue: [^ fail value: 'Sorry, only one world awake at a time.'].
                  system wake: snap 
                    Username: username
                    Password: password
                     OnNode: (nodes nodes named: chosenNode)
                      IfFail: [|:v| ^ fail value: v ].
                  wc res statusCode: '303'.
                  wc res location: '/manage/'.
                  self ]
               False: [fail value: 'Something went wrong.' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: links\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wakeLink: n = ( |
            | 
            '<form action="/wake" id="wakeLink-', n, '" method="post" style="display:none"><input type="text" name="snapshot" value="', n, '" />
            Username: <input type="text" name="user"> Password: <input type="password" name="password">
            </form> <a href="javascript:;" onclick="javascript: document.getElementById(\'wakeLink-', n, '\').submit()">wake</a>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'servlet' -> () From: ( | {
         'Category: components\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         welcomeMessage = ( |
            | 
            (p: 'Hi and welcome to OurSelf.io!'),
            (p: 'This is the management panel. Here you can start, stop, rename and delete Self worlds.'),
            (p: 'You can also download them (you will get a .ourself file which is a zip file containing a Self snapshot), and upload them.'),
            (p: 'If you want to delete your account, reset your password or change your username details, please email me (Russell Allen) at: mail@russell-allen.com')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'Category: internal\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sessions = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sessions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol sessions.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sessions' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         clearSessions = ( |
            | cookieDict: dictionary copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sessions' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         cookieDict <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sessions' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cookieFor: id = ( |
            | 
            cookieDict at: id IfAbsent: [cookieDict at: id Put: (random integer: 100000000) printString. cookieDict at: id]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sessions' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         idFor: cookie = ( |
            | 
            cookieDict do: [|:v. :k| v = cookie ifTrue: [^ k]].
            '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sessions' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'Category: internal\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sshSession = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol sshSession.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         address.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cert.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol sshSession parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: control\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         close = ( |
            | 
            session closeIfFail: [|:e| log warn: 'Closing failed']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: control\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         get: s = ( |
            | sh: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: control\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         isOpen = ( |
            | 
            session write: '' IfFail: [^ false].
            session isOpen).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         old = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> 'old' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol sshSession parent old.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cshWrap: c To: fn = ( |
            | 
            c, ' &> ', fn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         execute = ( |
            | 
            sh: saveScript).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         saveScript = ( |
             f.
             fn.
            | 
            fn: os_file temporaryFileName, '.savescript'.
            f: os_file openForWriting: fn.
            f write: 'ssh ', address, ' -i ', cert, ' -T  <<SELFEOF\n'.
            f write: script.
            f write: '\nSELFEOF'.
            f close.
            fn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> 'old' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh: c = ( |
             fn.
             r <- ''.
             s.
             t.
            | 
            fn: os_file temporaryFileName, '.ssh'.
            os command: 'mkfifo ', fn.
            " ASSUMES CSH ON FREEBSD "
            s: cshWrap: c To: fn.
            os command: 'bash ', s, ' &'.
            t: os_file openForReading: fn.
            [|f <- true|
              r: r, (t readIfFail: [f: false. '']).
              f
            ] whileTrue.
            t close.
            os command: 'rm ', fn.
            os command: 'rm ', c.
            " Get rid of tty warning  in 
              first two lines"
            ((r splitOn: '\n') slice: 2 @ infinity) joinUsing: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: control\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         open = ( |
             cmd.
             port.
            | 
            port: random integerBetween: 2000 And: 40000.
            cmd: 'socat tcp-l:', port asString, ' system:"ssh ', address, ' -i ', cert, '" &'.
            cmd printLine.
            os command: cmd.
            process this sleep: 2000.
            'Opened socat ssh' printLine.
            session: os_file openTCPHost: 'localhost' Port: port IfFail: [|:e| log error: 'Failed to open socket to socat: ', e].
            'Opened socket to socat' printLine. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (os_file deadCopy)'
        
         session <- os_file deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh: c = ( |
             b <- ''.
             endCookie = 'xxSTOPxx'.
             r <- ''.
             startCookie = 'xxSTARTxx'.
             stop <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
            "There's not a clean way to see the end of the 
             returned info. As a hack, we check for a cookie"
            session writeLine: 'echo ', startCookie, '\n', c, '\necho ', endCookie.

            [stop] whileFalse: [ 
              b: b, (session readIfFail: [process this sleep: 10. '']).
              b shrinkwrapped size < endCookie size ifFalse: [
               stop: (b shrinkwrapped slice: endCookie size negate @ infinity) = endCookie]].
            r: (b shrinkwrapped slice: 0 @ endCookie size negate) shrinkwrapped.

            r findSubstring: startCookie
              IfPresent: [|:i| (r slice: (i + startCookie size) @ r size) shrinkwrapped]
              IfAbsent: [r]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh_2: c = ( |
             b <- ''.
            | 
            "There's not a clean way to see the end of the 
             returned info. As a hack, we wait until stuff 
             starts to be rturned, then assume if we wait more 
             than 100ms that the response is over"
            session writeLine: c, '\necho'.
            [session dataReady] whileFalse: [process this sleep: 10].
            [session dataReady] whileTrue: [process this sleep: 100. b: b, session read].
            b shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh_3: c = ( |
             b <- ''.
             cookie = 'xxCOOKIExx'.
             stop <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
            "There's not a clean way to see the end of the 
             returned info. As a hack, we check for a cookier"
            session writeLine: c, '\necho ', cookie.
            [stop] whileFalse: [
              [session dataReady] whileFalse: [process this sleep: 10].
              b: b, session read.
              stop: (b shrinkwrapped slice: cookie size negate @ infinity) = cookie].
            b shrinkwrapped slice: 0 @ cookie size negate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh_: c = ( |
             header.
             r.
             s.
            | 
            s: os_file openTCPHost: 'localhost' Port: 9997 IfFail: [|:e| halt].
            header: s readIfFail: [halt].
            s writeLine: c, '\necho DONE'.
            r: s readIfFail: [halt].
            s close.

            " Get rid of tty warning  in 
              first two lines"
            "((r splitOn: '\n') slice: 2 @ infinity) joinUsing: '\n'"
            "Get rid of DONE"
            ((r splitOn: '\n') slice: 0 @ -1) joinUsing: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         start = ( |
            | 
            (webserver server registerServlet: servlet) startOn: 80.
            "system setupChannel."
            "Cleanup"
            memory garbageCollect releaseObjects garbageCollect thoroughCleanup: true.
            system startCleanupProcess.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         stop = ( |
            | 
            webserver server stop. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> () From: ( | {
         'Category: internal\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         system <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (vector copyRemoveAll)'
        
         actionLog <- vector copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         actionLogAdd: e = ( |
             a.
            | 
            a: actionLog copyAddLast: e.
            actionLog: a.
            sendTelegramMessage: e.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         addSnapshot: sn Named: n IfFail: fb = ( |
            | nodes snapshots addSnapshot: sn Named: n IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fComment: All nodes share available \x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         available = ( |
            | nodes snapshots available).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         availableForId: id = ( |
            | 
            available copyFilteredBy: [|:w| w owner = id]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         awake = ( |
             r.
            | 
            r: sequence copyRemoveAll.
            nodes all do: [|:n| r: r, n awake].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         awakeForId: id = ( |
            | awake copyFilteredBy: [|:i| (i splitOn: '/') first = id]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: system cleanup and monitoring\x7fComment: Checks for running jails without a Self process\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         checkForOverlargeWorlds = ( |
             t.
            | 
            t: time current minuteGMT.
            (t >= 0) && (t <= 2) ifFalse: [^ self].
            nodes snapshots overlargeWorlds do: [|:z|
                sendTelegramMessage: 'Overlarge Worlds: ', z].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: system cleanup and monitoring\x7fComment: Checks for running jails without a Self process\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         checkForZombies = ( |
             t.
            | 
            t: time current minuteGMT.
            (t >= 0) && (t <= 2) ifFalse: [^ self].
            nodes all do: [|:n| 
              n zombies do: [|:z|
                sendTelegramMessage: 'Zombie: ', z]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: system cleanup and monitoring\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cleanupExpiredWorlds = ( |
            | 
            nodes all do: [|:n| n cleanupExpiredWorlds]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: system cleanup and monitoring\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cleanupLoop = ( |
            | 
            [log info: 'Cleaning expired worlds'. safeAccess cleanupExpiredWorlds. log info: 'Cleaning expired worlds'. 
             log info: 'Pruning expired downloads'. safeAccess pruneOldSnapshotDownloads. log info: 'Pruned expired downloads: sleeping'. 
             log info: 'Checking for zombies'. safeAccess checkForZombies. log info: 'Checked For Zombies: sleeping'. 
             log info: 'Checking for overlarge worlds'. safeAccess checkForOverlargeWorlds. log info: 'Checked For OverlargeWorlds: sleeping'. 
             process this sleep: 120000.
            log info: 'Cleaning expired worlds: looping'. ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         copyFrom: f To: t IfFail: blk = ( |
            | nodes snapshots copyFrom: f To: t IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         defaultNode = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system defaultNode.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'\')'
        
         address = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         awake = ( |
            | 
            awakeCacheIsDirty ifTrue: [
              awakeCache: awakeShowJails: false.
              makeAwakeCacheDirty].
            awakeCache).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         awakeCache <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         awakeCacheIsDirty <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         awakeShowJails: b = ( |
             j.
             l.
            | 
            j: possibleJails asVector joinUsing: '\\|'.
            l: ssh: 'ls ', jailBaseMountpoint, ' | grep \'', j, '\' | xargs -I % sh -c "', (b ifTrue: [' echo % ;'] False: ''), ' cat ', jailBaseMountpoint, '/%/ACCOUNT 2>/dev/null "'. 
            l = '' 
              ifTrue: [sequence copyRemoveAll]
               False: [(l splitOn: '\n') mapBy: [|:e| e shrinkwrapped]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         baseID = ( |
             x.
            | 
            x: ssh: 'zfs list -rt all'.
            x: x splitOn: '\n'.
            x: x filterBy: [|:e| e matchesPattern: jailBase, '/base@*'].
            (x last splitOn: ' ') first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfile = ( |
             c.
            | 
            c: caddyfileConsoleHeader.
            runningJails do: [|:j|
              c: c, caddyfileConsoleFor: (worldRunningOnJail: j) On: j slice: -1 @ infinity].
            c: c, caddyfileConsoleFooter.

            c: c, caddyfileDesktopHeader.
            runningJails do: [|:j|
              c: c, caddyfileDesktopFor: (worldRunningOnJail: j) On: j slice: -1 @ infinity].
            c: c, caddyfileDesktopFooter.
            c: c, caddyfileHomePage.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileConsoleFooter = '
}
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileConsoleFor: world On: jail = ( |
            | 
            ((('

              basicauth /{{world}}/js {{user}} {{password}}
              proxy /{{world}}/ 192.168.0.{{jail}}:9000 {
                transparent
                websocket
                without /{{world}}
              }

            ' 
            replace: '{{user}}' With: defaultUser)
            replace: '{{password}}' With: defaultPassword)
            replace: '{{world}}' With: world)
            replace: '{{jail}}'  With: jail).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileConsoleHeader = '
console.ourself.io {
  gzip

  basicauth /manager/js owner db6928
  proxy /manager/ 192.168.0.0:9000 {
    transparent
    websocket
    without /manager
  }

'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileDesktopFooter = '

}
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileDesktopFor: world On: jail = ( |
            | 
            ((('

              basicauth /{{world}}/core guest self
              proxy /{{world}}/ 192.168.0.{{jail}}:8000 {
                transparent
                websocket
                without /{{world}}
              }

            ' 
            replace: '{{user}}' With: defaultUser)
            replace: '{{password}}' With: defaultPassword)
            replace: '{{world}}' With: world)
            replace: '{{jail}}'  With: jail).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileDesktopHeader = '

  desktop.ourself.io {
    gzip

  basicauth /manager/core owner db6928
  proxy /manager/ 192.168.0.0:8000 {
    transparent
    websocket
    without /manager
  }

'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         caddyfileHomePage = '
ourself.io {
  gzip
  log
  errors errors.log

  proxy / 192.168.0.0:80 {
    transparent
    websocket
    timeout 24h
    keepalive 10
  }
}
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'\')'
        
         cert = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cleanupExpiredWorlds = ( |
            | 
            expiredWorlds do: [|:w| 
                sleep: w IfFail: [|:e| log warn: e].
                miocontrol system actionLogAdd: time current printString, ': Automatically sleeping on timeout ', w]. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         createJailTree: w = ( |
            | 
            ssh: 'zfs clone ', baseID, ' ', jailBase, '/', w. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         defaultPassword = 'self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         defaultUser = 'guest'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         deleteWorld: sn FromNodeIfFail: blk = ( |
            | 
            ssh: 'zfs destroy -r zroot/ourself/worlds/', sn.
                self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         destroyJailTree: w = ( |
            | 
            ssh: 'zfs umount -f ', jailBase, '/', w, ' ; zfs destroy ', jailBase, '/', w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         expiredWorlds = ( |
             a.
            | 
            "Fast exit"
            expiringWorldRegistry isEmpty ifTrue: [^ expiringWorldRegistry].
            makeAwakeCacheDirty.
            a: awake.
            expiringWorldRegistry: (expiringWorldRegistry
             copyFilteredBy: [|:e| a includes: e x]).
            (expiringWorldRegistry
             copyFilteredBy: [|:e| (time copyMsec: time current - e y) minute > expiryTimeInMinutes])
             mapBy: [|:e| e x]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         expiringWorldRegistry <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         expiryTimeInMinutes = 5.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         freeJailIfNone: blk = ( |
             s.
            | 
            s: possibleJails copy removeAll: runningJails. 
            s isEmpty ifTrue: [blk value: 'No free jail.'] False: [s first]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fCategory: zfs sync\x7fComment: Will break if world doesn\'t exist\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         getVersionOfWorld: w = ( |
             l.
            | 
            l: ssh: 'zfs list -rt all | grep worlds/', w, '@sync-'.
            l: l splitOn: '\n'.
            "
              eg 
            "
            l mapBy: [|:e| (e splitOn: ' ') first].
            l mapBy: [|:e| (e splitOn: '@') at: 1].
            l mapBy: [|:e| e slice: 5@infinity].
            l mapBy: [|:e| e asSmallInteger].
            l copySort last).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         incrementVersionOfWorld: w = ( |
             v.
            | 
            v: (getVersionOfWorld: w) + 1.
            ssh: 'zfs snapshot zroot/ourself/worlds/', w, '@sync-', v asString.
            getVersionOfWorld: w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         jailBase = 'zroot/ourself'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         jailBaseMountpoint = '/ourself'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         jailIDForWorld: w = ( |
            | 
            runningJails
              findFirst: [|:j| w = worldRunningOnJail: j]
              IfPresent: [|:j| j]
               IfAbsent: [ 
            miocontrol system sendTelegramMessage: 'Cannot find ', w, ' in running jails'.
            log error: 'Cannot find ', w, ' in running jails'.
            halt.]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         logging = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         makeAwakeCacheDirty = ( |
            | awakeCacheIsDirty: true. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nginxConsoleFor: world On: jail = ( |
            | 
             "basicauth /console/{{world}}/js {{user}} {{password}}"
            ((('

                location /console/{{world}}/ {
                    proxy_pass http://192.168.0.{{jail}}:9000/;
                    proxy_http_version 1.1;
                    proxy_set_header Upgrade $http_upgrade;
                    proxy_set_header Connection \"Upgrade\";
                    proxy_set_header Host $host;
                    proxy_set_header X-Real-IP $remote_addr;
                    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                    proxy_set_header X-Forwarded-Proto $scheme;

                 }        

            ' 
            replace: '{{user}}' With: defaultUser)
            replace: '{{password}}' With: defaultPassword)
            replace: '{{world}}' With: world)
            replace: '{{jail}}'  With: jail).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nginxDesktopFor: world On: jail = ( |
             s.
            | 
            s: ''.
            6 do: [|:n| 
              s: s, (nginxDesktopNumber: n For: world On: jail)].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nginxDesktopNumber: n For: world On: jail = ( |
             number.
            | 
            0 = n 
              ifTrue: [number: '']
               False: [number: n asString, '/'].

            ((('

                location /desktop/{{world}}/{{number}} {
                    proxy_pass http://192.168.0.{{jail}}:800{{port}}/;
                    proxy_http_version 1.1;
                    proxy_set_header Upgrade $http_upgrade;
                    proxy_set_header Connection \"Upgrade\";
                    proxy_set_header Host $host;
                    proxy_set_header X-Real-IP $remote_addr;
                    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                    proxy_set_header X-Forwarded-Proto $scheme;
                    proxy_read_timeout 24h;
               }        

            ' 
            replace: '{{port}}' With: n asString)
            replace: '{{number}}' With: number) 
            replace: '{{world}}' With: world)
            replace: '{{jail}}'  With: jail).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nginxFooter = '}
}
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nginxHeader = ( |
            | 
            ' 
            worker_processes  1;

            events {
                worker_connections  1024;
            }

            http {
                default_type  application/octet-stream;

                sendfile        on;
                keepalive_timeout  65;


                server {
                  listen 80 default_server;
                  server_name _;
                  return 301 https://$host$request_uri;
                }

                 server {
                    listen       443 ssl;
                    server_name  {{address}};
                    ssl_certificate /ourself/letsencrypt/certificates/{{address}}.crt;
                    ssl_certificate_key /ourself/letsencrypt/certificates/{{address}}.key;
                    # ssl_certificate /usr/local/etc/letsencrypt/live/{{address}}/fullchain.pem;
                    # ssl_certificate_key /usr/local/etc/letsencrypt/live/{{address}}/privkey.pem;


            ' replace: '{{address}}' With: address).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nginxconf = ( |
             a.
             c.
            | 
            a: awakeShowJails: true.
            c: nginxHeader.
            a isEmpty ifFalse: [
                a size do: [|:i|
                  ((i / 2) * 2) = i ifTrue: [
                    c: c, nginxConsoleFor: (a at: i + 1) On: (a at: i) slice: -1 @ infinity]].
                a size do: [|:i|
                  ((i / 2) * 2) = i ifTrue: [
                    c: c, nginxDesktopFor: (a at: i + 1) On: (a at: i) slice: -1 @ infinity]].
            ].
            c: c, nginxFooter.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         onJail: j Do: s = ( |
            | ssh: 'jexec ', j, ' ', s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         onJail: w Setup: n Password: pass = ( |
             i.
            | 

            i: n asString.
            onJail: w Do: ' sh -c "echo ', pass, ' | vncpasswd -f > /self/vnc/', i, '.vncpasswd"'.
            onJail: w Do: ' tmux new -s xvnc', i, ' -d Xvnc -geometry 3000x3000 -rfbauth /self/vnc/', i, '.vncpasswd -depth 24 :', i.
            onJail: w Do: ' tmux new -s rp', i, ' -d ratpoison -d :', i, '\n'.
            onJail: w Do: ' tmux new -s novnc', i, ' -d bash /opt/noVNC/utils/launch.sh --vnc localhost:590', i, ' --listen 800', i.
            onJail: w Do: ' xset -display :', i, ' fp+ /usr/local/share/fonts/urwfonts/,/usr/local/share/fonts/terminus-font/,/usr/local/share/fonts/75dpi/'.
            onJail: w Do: ' xset -display :', i, ' fp rehash\n'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         possibleJails = ( |
             x.
            | 
            x: set copyRemoveAll. 1 to: 9 Do: [|:i| x add: 'j', i asString]. x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: randomWord\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         randomShortWord = ( |
             r.
            | 
            randomWordCache isEmpty ifTrue: [
              randomWordCache: '/usr/share/dict/words' asFileContents].
            r: '01234567890'.
            [ r size > 6 ] whileTrue: [
            r: random integer: randomWordCache size.
            r: (((randomWordCache copyFrom: r UpTo: r + 100) splitOn: '\n') at: 1) uncapitalize].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: randomWord\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         randomWord = ( |
            | randomShortWord, '-', randomShortWord).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: randomWord\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'\')'
        
         randomWordCache <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         reloadNginxConf = ( |
            | ssh: 'nginx -s reload'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         resetCaddy = ( |
            | ssh: 'killall -USR1 caddy').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         restart: sn IfFail: blk = ( |
             w.
            | 
            makeAwakeCacheDirty.
            w: jailIDForWorld: sn.
            onJail: w Do: '/usr/local/bin/restartSelf'.
            log info: 'Restarted jail: ', w, ' running ', sn.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         runningJails = ( |
            | 
            ((ssh: 'ls ', jailBaseMountpoint, '/') splitOn: '\n') intersect: possibleJails).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         saveCaddyfile = ( |
             c.
             f.
             fn.
            | 
            fn: os_file temporaryFileName, '.caddyfile'.
            f: os_file openForWriting: fn.
            f write: caddyfile.
            f close.
            c: 'scp -i ', cert, ' ', fn, ' ', username, '@', address, ':/jails/caddyfile'.
            logging ifTrue: [log info: '<', c, '>'].
            os command: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         saveNginxConf = ( |
             c.
             f.
             fn.
            | 
            fn: os_file temporaryFileName, '.nginxconf'.
            f: os_file openForWriting: fn.
            f write: nginxconf.
            f close.
            c: 'scp -q -i ', cert, ' ', fn, ' ', username, '@', address, ':/ourself/nginx.conf'.
            logging ifTrue: [log info: '<', c, '>'].
            os command: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sendWorldToHome: w Baseline: v = ( |
            | 

            ssh: 'zfs send -i zroot/ourself/worlds/', w, '@sync-', v asString, ' ', 
                 '            zroot/ourself/worlds/', w, '@sync-', (getVersionOfWorld: w) asString, ' ',
                 '| ssh -i /root/.ssh/id_rsa_mail_russell-allen.com root@ourself.io ',
                 '  zfs recv -Fdv zroot'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (miocontrol sshSession)'
        
         session <- bootstrap stub -> 'globals' -> 'miocontrol' -> 'sshSession' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sleep: sn IfFail: blk = ( |
             r.
             w.
            | 
            makeAwakeCacheDirty.
            (awake includes: sn) ifFalse: [blk value: 'Snapshot is already asleep'] True: [
              w: jailIDForWorld: sn.
              ssh: 'service jail stop ', w.
              process this sleep: 3000.
              " See note at wake: "
              ssh: 'umount ', jailBaseMountpoint, '/', w, '/compat/linux/self'.    
              (sn splitOn: '/') first = 'try' ifTrue: [ssh: 'zfs destroy zroot/ourself/', w, '/self']
                                               False: [ssh: 'umount ', jailBaseMountpoint, '/', w, '/root/.ssh'. 
                                                       ssh: 'umount ', jailBaseMountpoint, '/', w, '/self'].
              " Sync if not trial "
              (sn splitOn: '/') first = 'try' ifFalse: [
                incrementVersionOfWorld: sn.
                syncWorld: sn].
              destroyJailTree: w.
              updateProxy.
              log info: 'Stopped jail: ', w, ' running ', sn.
              self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         ssh: cmd = ( |
             a.
             r.
            | 
            logging ifTrue: [log info: address, ' = <', cmd, '>'].
            r: session get: cmd IfFail: [|:e| log warn: 'SSH request failed: ', e. ''].
            logging ifTrue: [log info: '== ', r].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         ssh: cmd IfFail: blk = ( |
             a.
             r.
            | 
            logging ifTrue: [log info: address, ' = <', cmd, '>'].
            r: session get: cmd IfFail: [|:e|
                logging ifTrue: [log warn: '== ', e].
                 ^ blk value: e].
            logging ifTrue: [log info: '== ', r].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         syncWorld: w = ( |
            | 
            miocontrol system nodes snapshots syncWorld: w. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: caddy (Broken)\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         updateCaddy = ( |
            | saveCaddyfile. resetCaddy. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fCategory: nginx\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         updateNginx = ( |
            | saveNginxConf. reloadNginxConf. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: proxy\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         updateProxy = ( |
            | updateNginx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (nil)'
        
         user.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         username = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wake: n AsTemplate: aBool Username: username Password: pass IfFail: blk = ( |
             r.
             sn.
             w.
            | 
            makeAwakeCacheDirty.
            "Do this first to save time" 
            pass size > 8 ifTrue: [^ blk value: 'Cannot have password size > 8 (VNC limit)'].
            w: freeJailIfNone: [|:e| log warn: 'Failed to start jail: no free jails'.  ^ blk value: e].
            ((miocontrol system available copy mapBy: [|:a| a toSlashName]) includes: n) ifFalse: [^ blk value: 'Cannot find snapshot named "', n, '"'].
            aBool ifTrue: [ sn: 'try/', randomWord] False: [sn: n ].
            (awake includes: sn) ifTrue: [^ blk value: 'Snapshot is already awake'].
            createJailTree: w.
            syncWorld: n. " Sync underlying prototype, not fake try/random world "

            aBool ifTrue: [ ssh: 'zfs clone zroot/ourself/worlds/', n, '@sync-', (getVersionOfWorld: n) asString, ' zroot/ourself/', w, '/self'. ] 
                   False: [ ssh: 'mount_nullfs                      ', jailBaseMountpoint, '/worlds/', sn, ' ',     jailBaseMountpoint, '/', w, '/self'.
                            ssh: 'mkdir ', jailBaseMountpoint, '/', w, '/root/.ssh'.
                            ssh: 'mount_nullfs                      ', jailBaseMountpoint, '/worlds/', n,  '/.ssh ', jailBaseMountpoint, '/', w, '/root/.ssh'. ].

            " Mount separeately to work around FreeBSD Bug 250823 "
            ssh: 'mkdir ', jailBaseMountpoint, '/', w, '/compat/linux/self'.
            aBool ifTrue: [ ssh: 'mount_nullfs ', jailBaseMountpoint, '/', w,  '/self ', jailBaseMountpoint, '/', w, '/compat/linux/self' ] 
                   False: [ ssh: 'mount_nullfs ', jailBaseMountpoint, '/worlds/', sn, ' ', jailBaseMountpoint, '/', w, '/compat/linux/self' ].

            ssh: 'cat ', jailBaseMountpoint, '/', w, '/self/snapshot > /dev/null'.
            ssh: 'echo ', sn, ' > ', jailBaseMountpoint, '/', w, '/ACCOUNT'.
            ssh: 'echo ', username, ' > ', jailBaseMountpoint, '/', w, '/tmp/USER'.
            ssh: 'echo ', pass, ' > ', jailBaseMountpoint, '/', w, '/tmp/PASSWORD'.
            ssh: 'service jail start ', w. 
            process this sleep: 3000.
            updateProxy.
            log info: 'Started jail: ', w, ' running ', sn.
            sn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wake: sn Username: username Password: pass IfFail: blk = ( |
            | wake: sn AsTemplate: false Username: username Password: pass IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wakeTryFromTemplate: sn IfFail: blk = ( |
            | 
            wakeTryFromTemplate: sn Username: 'guest' Password: 'password' IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wakeTryFromTemplate: sn Username: username Password: pass IfFail: blk = ( |
             n.
            | 
            n: wake: sn AsTemplate: true Username: username Password: pass IfFail: blk.
            expiringWorldRegistry add: n @ time current.
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         worldExists: w = ( |
            | 
            '' != (ssh: 'zfs list -rt all | grep worlds/', w, '@sync-')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         worldRunningOnJail: j = ( |
            | 
            (ssh: 'cat ', jailBaseMountpoint, '/', j, '/ACCOUNT') shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         zombies = ( |
            | 
            makeAwakeCacheDirty.
            awake copyFilteredBy: [|:w. jail|
              jail: jailIDForWorld: w.
              (onJail: jail Do: 'ps aux | grep Self') = '' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         delete: w IfFail: blk = ( |
            | 
            nodes snapshots delete: w IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         flushCaches = ( |
            | 
            nodes all do: [|:n| n makeAwakeCacheDirty]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         isAwake: snap = ( |
            | awake includes: snap).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         moveFrom: f To: t IfFail: blk = ( |
            | 
            nodes snapshots moveFrom: f To: t IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nodeForSnap: snap IfAbsent: blk = ( |
            | 
            nodes all do: [|:n| (n awake includes: snap) ifTrue: [^ n]]. blk value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nodes = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         all = ( |
            | 
            (syd & sjo & tyo) asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         any = ( |
            | 
            (all selectAtRandom: 1) first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         ldn = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes ldn.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'ldn.ourself.io\')'
        
         address <- 'ldn.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         awakeCache <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         awakeCacheIsDirty <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'/root/.ssh/id_rsa_mail_russell-allen.com\')'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         expiringWorldRegistry <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         id = 'ldn'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         location = 'London'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         logging <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         session <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes ldn session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'ldn.ourself.io\')'
        
         address <- 'ldn.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (12345)'
        
         localPort <- 12345.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes tyo session parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'ourself\')'
        
         user <- 'ourself'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'ldn' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         username <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         named: aString = ( |
            | aString sendTo: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sjo = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes sjo.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'sjo.ourself.io\')'
        
         address <- 'sjo.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         awakeCache <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         awakeCacheIsDirty <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'/root/.ssh/id_rsa_mail_russell-allen.com\')'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         expiringWorldRegistry <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         id = 'sjo'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         location = 'Silicon Valley'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         logging <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         session <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes sjo session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'sjo.ourself.io\')'
        
         address <- 'sjo.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (12345)'
        
         localPort <- 12345.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         user <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'sjo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         username <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         snapshots = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes snapshots.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: old sshfs\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         accountsName = 'accounts-master'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: upload support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         addSnapshot: sn Named: snapDescriptor IfFail: fb = ( |
             slashName.
             stagingFileName.
             worldMountpoint.
            | 

            " sn should be a name of a file which is a zip file with snapshot at top level "

            " slashName should be id/name "
            slashName: snapDescriptor toSlashName.

            "Copy file to snapshot server"
            stagingFileName: '/ourself/upload-staging/', snapDescriptor toFilename.
            session copyFile: sn ToRemote: stagingFileName IfFail: [^ fb value: 'Ssc failed #4'].

            "Prepare space on snapshot server, if not already existing?"
            copyFrom: 'admin/blank' To: slashName IfFail: [^ fb value: 'Copy failed #3'].

            "Unzip file from staging into new slashname directory"
            worldMountpoint: mountPointOfWorld: snapDescriptor IfFail: [^ fb value: 'Cant find world #5'].
            ssh: 'unzip -o -d ', worldMountpoint, ' ', stagingFileName IfFail: [^ fb value: 'Unzip Failed #6'].

            "Sync to nodes"
            incrementVersionOfWorld: slashName.
            syncWorld: slashName.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'ourself.io\')'
        
         address <- 'ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fComment: Now returns collection of snapshotDescriptors\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         available = ( |
             a.
             accountsName = 'worlds'.
             jailBaseMountpoint = '/ourself/'.
             x.
            | 
            x:   ssh: 'find ', jailBaseMountpoint, '/', accountsName, '/ -maxdepth 2 -depth 2 -type d'.
            x: x splitOn: '\n'.
            x: x copyFilteredBy: [|:i| (i splitOn: '/') last first != '.'].
            x: x mapBy: [|:i| i copyFrom: (jailBaseMountpoint, '/', accountsName, '/') size UpTo: i size].
            x: x mapBy: [|:i| miocontrol system snapshotDescriptor copy readFromSlashName: i IfFail: [log error: 'Bad slashname ', i. halt]].
            x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         broadcastToNodesBehind: w = ( |
             s.
             v.
            | 
            v: getVersionOfWorld: w.
            s: semaphore copySignalCapacity: miocontrol system nodes all size.
            miocontrol system nodes all do: [|:n| 
                (message copy receiver: self Selector: 'sendWorld:Version:ToNode:NotifyComplete:'
                  With: w  With: v With: n With: s) fork].
            miocontrol system nodes all size do: [s wait].

                "For search for senders to work"
                [sendWorld: w Version: v ToNode: n NotifyComplete: s].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'/root/.ssh/id_rsa_mail_russell-allen.com\')'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFrom: f To: t IfFail: blk = ( |
             v.
            | 
            v: getVersionOfWorld: f.
            ssh: 'zfs create -p zroot/ourself/worlds/', (t splitOn: '/') first.
            ssh: 'zfs send zroot/ourself/worlds/',  f, '@sync-', v asString, ' | zfs receive zroot/ourself/worlds/', t, '@sync-1'.
            syncWorld: t.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         currentSnapshotsNotStaged = ( |
            | 
            currentSnapshotsWithVersions difference: currentStagedSnapshotsWithVersions).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         currentSnapshotsWithVersions = ( |
            | 
            (currentSnapshotsWithVersionsSupport copy 
               content: ssh: 'zfs list -rt all')
               value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         currentSnapshotsWithVersionsSupport = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes snapshots currentSnapshotsWithVersionsSupport.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         breakIntoLines = ( |
            | 
            content: content splitOn: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (nil)'
        
         content.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         keepOnlyConformantSnapshots = ( |
            | 
            content filterBy: [|:i. x |
               x: i splitOn: '@'.
               (x size = 2) && 
               [(x at: 1) size > 4] &&
               [((x at: 1) slice: 0 @ 5) = 'sync-']]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         keepOnlyLatestVersion = ( |
             d.
            | 
            d: dictionary copyRemoveAll.
            content do: [|:i. n|
              n: i owner, '/', i name.
              (d includesKey: n)
                ifTrue: [
                      (d at: n) version < i version ifTrue: [
                          d at: n Put: i]]
                 False: [ d at: n Put: i]]. 
            content: content copyRemoveAll addAll: d asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         keepOnlySnapshotName = ( |
            | content mapBy: [|:i| (i splitOn: ' ') first]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         keepOnlyWorlds = ( |
            | 
            ((content 
               filterBy: [|:i| i size > 20])
               filterBy: [|:i| (i slice: 0 @ 21) = 'zroot/ourself/worlds/'])
               mapBy: [|:i| i slice: 21 @ infinity]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         snapshotDescriptor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system snapshotDescriptor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         nameVersionHolder = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         splitIntoNameAndVersion = ( |
            | 
            content mapBy: [|:i. x. o|
              o: nameVersionHolder copy.
              o owner: (i splitOn: '/') at: 0.
              o name: (((i splitOn: '/') at: 1) splitOn: '@') at: 0.
              o version: (((i splitOn: '@') at: 1) slice: 5 @ infinity) asInteger.
              o]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'currentSnapshotsWithVersionsSupport' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         value = ( |
            | 
            breakIntoLines.
            keepOnlySnapshotName. 
            keepOnlyWorlds.
            keepOnlyConformantSnapshots.
            splitIntoNameAndVersion.
            keepOnlyLatestVersion.
            content).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         currentStagedSnapshotsWithVersions = ( |
             a.
            | 
            a: (ssh: 'ls -1 /ourself/download-staging/') splitOn: '\n'.
            a filterBy: [|:i| i size > 0 ].
            a mapBy: [|:i. d |
              "russell-prototype-v18.ourself"
              d: miocontrol system snapshotDescriptor copy readFromFilename: i
                                        IfInvalid: [log error: 'Invalid Staged Snapshot Descriptor'].
              d]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         delete: sn IfFail: blk = ( |
            | 
            deleteWorld: sn FromNodeIfFail: [|:e| ^ blk value: e].
            syncWorld: sn.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         deleteFromNodes: w = ( |
            | 
            miocontrol system nodes all do: [|:n|
              (n worldExists: w) ifFalse: ["No nothing - already deleted" ^ self].
              n deleteWorld: w FromNodeIfFail: raiseError].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         ensureAllSnapshotsStaged = ( |
            | 
            currentSnapshotsNotStaged do: [|:s| stageSnapshot: s]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         expiringWorldRegistry <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         getSnapshotDescriptorFor: str IfAbsent: fb = ( |
             n.
             o.
            | 
            o: (str splitOn: '/') at: 0.
            n: (str splitOn: '/') at: 1.
            currentSnapshotsWithVersions do: [|:i|
              (i owner = o) && (i name = n) ifTrue: [^ i]].
            fb value: 'Not Found').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         id = 'snapshots'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         location = 'Sydney'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         logging <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         mountPointOfWorld: snapDescriptor IfFail: fb = ( |
            | 
            '/ourself/worlds/', snapDescriptor owner, '/', snapDescriptor name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         moveFrom: f To: t IfFail: blk = ( |
            | 
            copyFrom: f To: t IfFail: [|:e| ^ blk value: e].
            delete: f IfFail: [|:e| ^ blk value: e].
            syncWorld: f.
            syncWorld: t.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: checking\x7fComment: We\'re defining this as 400M when at rest.\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         overlargeWorlds = ( |
             o.
             r.
            | 
            r: ssh: 'du -s /ourself/worlds/*/*'.
            o: set copyRemoveAll.
            (r splitOn: '\n') do: [|:l. p|
              p: l splitOn: '\t'.
              (p at: 0) asInteger > 400000 ifTrue: [
                 o add: p at: 1]].
            o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         pruneOldSnapshotDownloads = ( |
             currentDate.
            | 
            currentDate: (ssh: 'date "+%Y%m%d%H%M"') asIntegerIfFail: [log warn: 'pruneOldSnapshotDownloads failed'. ^ self].
            (((ssh: 'ls -1 /ourself/download' IfFail: [log warn: 'ssh failed in pruneOldSnapshotDownloads'. ^ self]) splitOn: '\n') 
             filterBy: [|:x| x size > 0]) do: [|:l| 
                l asInteger < (currentDate - 20) ifTrue: [ 
                  "Link is more than 20 minutes old"
                  ssh: 'rm -r /ourself/download/', l]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         publishSnapshotDescriptor: sd IfFail: fb = ( |
             date.
             n.
             uuid.
            | 
            (currentStagedSnapshotsWithVersions includes: sd)
              ifFalse: [
                 ensureAllSnapshotsStaged.
                (currentStagedSnapshotsWithVersions includes: sd) ifFalse: [^ fb value: 'Not Found']].
            uuid: ssh: 'uuidgen'.
            date: ssh: 'date "+%Y%m%d%H%M"'.
            ssh: 'mkdir /ourself/download/', date.
            ssh: 'mkdir /ourself/download/', date, '/', uuid.
            n: sd owner, '-', sd name, '-v', sd version asString, '.ourself'.
            pruneOldSnapshotDownloads.
            ssh: 'ln -s /ourself/download-staging/', n, ' /ourself/download/', date, '/', uuid, '/', n.
            date, '/', uuid, '/', n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         pullIfRemoteNodeAhead: w = ( |
             v.
            | 
            v: getVersionOfWorld: w.
            "NOTE - JUST TAKES FIRST AHEAD WORLD"
            miocontrol system nodes all do: [|:n|
              (n worldExists: w) ifFalse: ["Do nothing - we will push a version" ^ self].
              (n getVersionOfWorld: w) > v ifTrue: [
                  n sendWorldToHome: w Baseline: v]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sendFullWorld: w Version: v ToNode: n = ( |
            | 

            ssh: 'zfs send zroot/ourself/worlds/', w, '@sync-', v asString, ' ',
                     '| zstd ',
                     '| ssh -i /root/.ssh/id_rsa_mail_russell-allen.com root@', n id, '.ourself.io ',
                     '"unzstd | zfs recv -Fdv zroot"'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sendWorld: w BaseVersion: rv IncrementVersion: v ToNode: n = ( |
            | 

            ssh: 'zfs send -i zroot/ourself/worlds/', w, '@sync-', rv asString, ' ',
                     '            zroot/ourself/worlds/', w, '@sync-', v asString, ' ', 
                     '| ssh -i /root/.ssh/id_rsa_mail_russell-allen.com root@', n id, '.ourself.io ',
                     '  zfs recv -Fdv zroot'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sendWorld: w Version: v ToNode: n NotifyComplete: s = ( |
            | 
            (n worldExists: w) 
               ifTrue: [|rv|
                 rv: n getVersionOfWorld: w.
                 rv < v ifTrue: [sendWorld: w BaseVersion: rv IncrementVersion: v ToNode: n]]
                False: [
                 sendFullWorld: w Version: v ToNode: n].
            s signal.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         session <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes snapshots session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'ourself.io\')'
        
         address <- 'ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (12345)'
        
         localPort <- 12345.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         user <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: old sshfs\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sshfsAvailable = ( |
             a.
            | 
            (((ssh: 'find ', jailBaseMountpoint, '/', accountsName, '/ -maxdepth 2 -depth 2 -type d') splitOn: '\n')
               copyFilteredBy: [|:i| (i splitOn: '/') last first != '.'])
               mapBy: [|:i| i copyFrom: (jailBaseMountpoint, '/', accountsName, '/') size UpTo: i size]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: old sshfs\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sshfsCopyFrom: f To: t IfFail: blk = ( |
            | ssh: 'cp -r ', jailBaseMountpoint, '/', accountsName, '/', f, ' ', jailBaseMountpoint, '/', accountsName, '/', t. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: old sshfs\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sshfsDelete: sn IfFail: blk = ( |
             cmd.
             name.
            | 
            name: ((sn splitOn: '/') joinUsing: '-'), '-', (time current compactPrintString asWords asVector joinUsing: '').
            cmd: 'mv ', jailBaseMountpoint, '/', accountsName, '/', sn, ' ', jailBaseMountpoint, '/', accountsName, '/trash/', name. 
            ssh: cmd. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: old sshfs\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sshfsMoveFrom: f To: t IfFail: blk = ( |
            | ssh: 'mv ', jailBaseMountpoint, '/', accountsName, '/', f, ' ', jailBaseMountpoint, '/', accountsName, '/', t. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: download support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         stageSnapshot: descriptor = ( |
             c.
            | 
            c: 'cd /ourself/worlds/', descriptor toSlashName, ' ; ',
                'zip -r /ourself/download-staging/', descriptor toFilename, ' *'.
            ssh: c.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sync = ( |
            | 
            available do: [|:w| syncWorld: w toSlashName]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: special\x7fCategory: zfs sync\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         syncWorld: w = ( |
            | 
            log info: 'Syncing world: ', w.
            (worldExists: w) ifFalse: [
              deleteFromNodes: w.
              ^ self
            ].
            pullIfRemoteNodeAhead: w.
            broadcastToNodesBehind: w.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'snapshots' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         username <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         syd = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes syd.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'syd.ourself.io\')'
        
         address <- 'syd.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         awakeCache <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         awakeCacheIsDirty <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'/root/.ssh/id_rsa_mail_russell-allen.com\')'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         expiringWorldRegistry <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         id = 'syd'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         location = 'Sydney'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         logging <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         session <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes syd session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         address <- 'syd.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (12345)'
        
         localPort <- 12345.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         user <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'syd' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         username <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         tyo = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes tyo.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'tyo.ourself.io\')'
        
         address <- 'tyo.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         awakeCache <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         awakeCacheIsDirty <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'/root/.ssh/id_rsa_mail_russell-allen.com\')'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         expiringWorldRegistry <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         id = 'tyo'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         location = 'Tokyo'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (true)'
        
         logging <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'defaultNode' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         session <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system nodes tyo session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'tyo.ourself.io\')'
        
         address <- 'tyo.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cert <- '/root/.ssh/id_rsa_mail_russell-allen.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (12345)'
        
         localPort <- 12345.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         close = ( |
            | 
            log warn: 'Closing ssh session: ', address.
            os command: 'ssh -o ControlPath=/tmp/', cntSck, ' -O exit fillerArg'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         cntSck = ( |
            | 'ourself-', address, '-', localPort asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         copyFile: localFilename ToRemote: remoteFilename IfFail: fb = ( |
             cmd.
            | 
            cmd: 'scp -i ', cert, ' ', localFilename, ' ', user, '@', address, ':', remoteFilename.
            "10 minutes is hardbaked in at this stage"
            os outputOfCommand: cmd Timeout: 10 * 1000 * 1000 IfFail: [^ fb value: 'Scp failed, timeout'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         get: s IfFail: fb = ( |
             r <- ''.
             sock.
            | 
            isOpen ifFalse: [
              close. 
              openIfFail: [|:e| ^ fb value: 'SSH open failed: ', e]].
            isOpen ifFalse: [^ fb value: 'Could not open connection to remote'].

            sock: os_file openTCPHost: 'localhost' Port: localPort IfFail: [|:e| ^ fb value: 'Could not open local connection: ', e].
            r: writeReceive: s OnSock: sock IfFail: [|:e| ^ fb value: e].
            sock closeIfFail: [log error: 'Could not close socket to session ssh proxy'].

            r shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         isKnownHost = ( |
            | 
            " Check whether file exists by openeing for reading"
            (os_file openForReading: '/root/.ssh/known_hosts' IfFail: [^ false]) close.
            (('/root/.ssh/known_hosts' asFileContents splitOn: '\n')
             mapBy: [|:l| (l splitOn: ' ') first])
             includes: address).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         isOpen = ( |
            | 
            (os command: 'ssh -o ControlPath=/tmp/', cntSck, ' -O check fillerArg &> /dev/null') = 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         openIfFail: fb = ( |
             cachedSshCommand.
            | 
            isOpen ifTrue: [^ self].
            (isKnownHost) ifFalse: [saveHostKey].
            localPort: random integerBetween: 10000 And: 20000.
            cachedSshCommand: 'ssh ', user, '@', address, ' -i ', cert, ' -S /tmp/', cntSck, ' -M -n -N -L ', localPort asString, ':localhost:12345 &'.
            os command: cachedSshCommand.
            "Wait up to 10 seconds for connection to open"
            100 do: [
              isOpen ifTrue: [log info: 'SSH session for ', address, ' now open'. ^ self]. 
              process this sleep: 100].
            fb value: 'SSH session open failed').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         saveHostKey = ( |
            | 
            os command: 'ssh-keyscan -H ', address, ' >> /root/.ssh/known_hosts'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         writeReceive: s OnSock: sock IfFail: fb = ( |
             r <- ''.
            | 
            (s splitOn: '\n') do: [|:l|
              sock write: l, '\n\n' IfFail: [|:e| ^ fb value: 'Could not write to socket to sesssion ssh proxy: ', e]. 
                  "Dont know why we need both, but inetd+lua seems to" 
              r: r, (sock readIfFail: [|:e| 
                   log warn: '<', s, '> failed'.
                   sock closeIfFail: false.
                   ^ fb value: 'Could not read from socket to session ssh proxy:', e])].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> 'session' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         user <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'nodes' -> 'tyo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'root\')'
        
         username <- 'root'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         numberOfAvailableJailsOn: node = ( |
            | node possibleJails).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: system cleanup and monitoring\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         pruneOldSnapshotDownloads = ( |
            | nodes snapshots pruneOldSnapshotDownloads. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: channel\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         rawChannel = ( |
            | rawChannelStore ifNil: [setupChannel. rawChannelStore]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: channel\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (nil)'
        
         rawChannelStore <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         restart: w IfFail: blk = ( |
            | 
            nodes all do: [|:n|
              (n awake includes: w) ifTrue: [
                n restart: w IfFail: [|:e| ^ blk value: e].
                actionLogAdd: time current printString, ': Restarting world named ', w.
                ^ self]].
            blk value: 'Cannot find world: ', w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: channel\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         safeAccess = ( |
            | safeAccessStore ifNil: [setupChannel. safeAccessStore]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (nil)'
        
         safeAccessStore <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: telegram messaging\x7fComment: Make sure we use /usr/local/bin/curl as /bin/curl is overriden 
by the linux version which doesn\'t work properly for TLS\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sendTelegramMessage: m = ( |
             cmd.
            | 
            cmd: '/usr/local/bin/curl -X POST -H \'Content-Type: application/json\' '.
            cmd: cmd, '-d \'{"chat_id": "501775571" , "text": "', m, '", "disable_notification": true}\' '.
            cmd: cmd, ' https://api.telegram.org/bot5165585476:AAHt-3jZlbgVw1Zv3CKEcgzwi7Z5O4BOIsE/sendMessage &'.
            os command: cmd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: channel\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         setupChannel = ( |
            | 
            rawChannelStore: channel copyOn: self. safeAccessStore: rawChannelStore waitingInbox. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sleep: w IfFail: blk = ( |
            | 
            nodes all do: [|:n|
              (n awake includes: w) ifTrue: [
                n sleep: w IfFail: [|:e| ^ blk value: e].
                actionLogAdd: time current printString, ': Sleeping world named ', w.
                ^ self]].
            blk value: 'Cannot find world: ', w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         = o = ( |
            | (name = o name) && (owner = o owner) && (version = o version)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         hash = ( |
            | name hash ^^ owner hash ^^ version hash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         name = ( |
            | rawName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         name: o = ( |
            | name: o IfInvalid: [^ error: 'Invalid Name']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Comment: Allow \':\' for worlds in the bin\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         name: n IfInvalid: fb = ( |
            | 
            (n allSatisfy: [|:c| c isDigit || c isLetter || (c = '-') || (c = ':')]) ifFalse: [^ fb value: 'Invalid name'].
            rawName: n.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         owner = ( |
            | rawOwner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         owner: o = ( |
            | owner: o IfInvalid: [^ error: 'Invalid Owner']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         owner: n IfInvalid: fb = ( |
            | 
            (n allSatisfy: [|:c| c isDigit || c isLetter || (c = '-') ]) ifFalse: [^ fb value: 'Invalid name'].
            rawOwner: n.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'\')'
        
         rawName <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'\')'
        
         rawOwner <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (0)'
        
         rawVersion <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         readFromFilename: fn IfInvalid: fb = ( |
            | 
            " russell-test[v2].ourself "
            fn size > 10 ifFalse: [^ fb value: 'Invalid Filename'].
            (fn slice: -8 @ infinity) = '.ourself' ifFalse: [^ fb value: 'Invalid Filename'].
            readFromString: (fn slice: 0 @ -8) IfInvalid: fb.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         readFromSlashName: sn IfFail: fb = ( |
             fail.
             x.
            | 
            " owner/name "
            fail: [^ fb value: 'Invalid snapshotDescriptor slashname'].
            x: sn splitOn: '/'.
            x size = 1 ifTrue: fail.
            x size = 2 ifTrue: [
              owner: (x at: 0) IfInvalid: fail.
              name: (x at: 1) IfInvalid: fail].
            x size > 2 ifTrue: fail.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         readFromString: s IfInvalid: fb = ( |
             fail.
             x.
            | 
            " owner-name[-v1] "
            fail: [^ fb value: 'Invalid snapshotDescriptor string'].
            x: s splitOn: '-'.
            x size = 1 ifTrue: fail.
            x size = 2 ifTrue: [
              owner: (x at: 0) IfInvalid: fail.
              name: (x at: 1) IfInvalid: fail].
            x size = 3 ifTrue: [
              (x at: 2) first = 'v' ifFalse: fail.
              owner: (x at: 0) IfInvalid: fail.
              name: (x at: 1) IfInvalid: fail.
              version: (((x at: 2) slice: 1 @ infinity) asIntegerIfFail: fail)
               IfInvalid: fail].
            x size > 3 ifTrue: fail.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'Category: tests\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         testReadFromString = ( |
             fail.
             x.
            | 
            fail: [^ false ].
            x: copy.
            x readFromString: 'russell-test' IfInvalid: fail.
            x readFromString: 'russell-test-v2' IfInvalid: fail.
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         toFilename = ( |
            | toString, '.ourself').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         toSlashName = ( |
            | owner, '/', name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         toString = ( |
            | 
            rawOwner, '-', rawName, 
            (rawVersion > 0 ifTrue: ['-v', rawVersion asString] False: '')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         version = ( |
            | rawVersion).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         version: o = ( |
            | version: o IfInvalid: [^ error: 'Invalid Version']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'snapshotDescriptor' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         version: v IfInvalid: fb = ( |
             fail.
            | 
            fail: [^ fb value: 'Invalid Version'].
            v < 0 ifTrue: fail.
            rawVersion: v.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: system cleanup and monitoring\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         startCleanupProcess = ( |
            | 
            [ cleanupLoop. " For senders " ].
            ( process copySend: (message copy receiver: self Selector: 'cleanupLoop')
                  CauseOfBirth: 'Cleanup loop on miocontrol system') resume. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         startTryIfFail: blk = ( |
            | 
            startTryOn: nodes any IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         startTryOnNode: node IfFail: blk = ( |
             r.
            | 
            r: node wakeTryFromTemplate: 'prototype/default' 
                               IfFail: [|:e| actionLogAdd: time current printString, ': Failed to start trial on template: prototype/default on node ', node id. 
                                        ^ blk value: e].
            actionLogAdd: time current printString, ': Trial started on template: prototype/default on node ', node id, ' named ', r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: users\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         users = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system users.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         allRegisteredUsers = ( |
            | 
            (((sh: 'ls ', databaseDirectory) splitOn: '\n') copyFilteredBy: [|:e| e != '']) mapBy: [|:e| e slice: 0 @ '.encrypted' size negate]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         allUsernames = ( |
            | allRegisteredUsers).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         databaseDirectory = '/self/users.db'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         ensureUserDatabase = ( |
            | 
            os mkdir: databaseDirectory Mode: 16r777 IfFail: [|:e| 'EEXIST' = e ifFalse: raiseError]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         logUser: u = ( |
             f.
            | 
            ensureUserDatabase. 
            f: os_file openForWriting: databaseDirectory, '/', u name, '.encrypted'.
            f write: u toEncryptedString.
            f close.
            ('Registered: ', u printString) printLine.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         password: p IsCorrectFor: u = ( |
             d.
             dp.
            | 
            (u = 'admin') && (p = 'reddit') ifTrue: [^ true].
            (allRegisteredUsers includes: u) ifFalse: [^ false].
            d: (userNamed: u IfAbsent: [^ false]). 
            d isCorrect: p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         registerUser: u Email: e Password: p IfFail: blk = ( |
             newUser.
            | 
            u = 'admin' ifTrue: [^ blk value].
            (allRegisteredUsers includes: u) ifTrue: [^ blk value].
            newUser: user copyName: u Email: e Password: p.
            logUser: newUser.
            miocontrol system sendTelegramMessage: 'New User: ', u, ' ', e.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         removeUserNamed: u = ( |
            | 
            sh: 'rm ', databaseDirectory, '/', u, '.encrypted'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh: c = ( |
             fn.
             r <- ''.
             s.
             t.
            | 
            fn: os_file temporaryFileName.
            os command: 'mkfifo ', fn.
            s: c, ' > ', fn, ' &'.
            os command: s.
            t: os_file openForReading: fn.
            [|f <- true|
              r: r, (t readIfFail: [f: false. '']).
              f
            ] whileTrue.
            t close.
            os command: 'rm ', fn.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: tests\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         test = ( |
            | 
            ensureUserDatabase.
            removeUserNamed: 'russell'.
            registerUser: 'russell' Email: 'mail@russell-allen.com' Password: 'pass123' IfFail: raiseError.
            (allRegisteredUsers includes: 'russell') ifFalse: raiseError.
            userNamed: 'russell' IfAbsent: raiseError.
            (password: 'pass123' IsCorrectFor: 'russell') ifFalse: raiseError.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'Category: private\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         user = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals miocontrol system users user.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         copyName: n Email: e Password: p = ( |
            | ((copy name: n) email: e) password: p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'user@example.com\')'
        
         email <- 'user@example.com'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fComment: escape for passwords so we\'re not passing over shell\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         escape: s = ( |
            | 
            (s asSequence mapBy: [|:c| 
               case 
                 if: (c isDigit || c isLetter) Then: [c]
                 If: ('!@#$%^&*()-=+"_;:,.<>/?`~' includes: c) Then: [c] 
               Else: [c asByte hexPrintString]]) joinUsing: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         fromEncryptedString: s = ( |
            | 
            fromString: sh: 'echo \'', s, '\' | openssl enc -d -aes-256-cbc -base64 -pbkdf2 -pass pass:OuR5e1F').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         fromString: s = ( |
             u.
             v.
            | 
            v: s shrinkwrapped splitOn: ' '.
            u: copy.
            u name: v at: 1.
            u email: v at: 2.
            u passwordHash: v at: 3.
            u).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         hashPassword: p = ( |
            | 
            p printLine.
            (sh: 'echo \'', (escape: p), '\' | openssl passwd -stdin -6 -salt ourselfSALT') shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         isCorrect: password = ( |
            | 
            passwordHash = (hashPassword: password)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         logMyself = ( |
            | miocontrol system users logUser: self. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'anon\')'
        
         name <- 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         password: pass = ( |
            | 
            passwordHash: hashPassword: pass. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'hash\')'
        
         passwordHash <- 'hash'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         printString = ( |
            | 
            '[', name, ',', email, ',', passwordHash, ']').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         sh: c = ( |
             fn.
             r <- ''.
             s.
             t.
            | 
            fn: os_file temporaryFileName.
            os command: 'mkfifo ', fn.
            s: c, ' > ', fn, ' &'.
            os command: s.
            t: os_file openForReading: fn.
            [|f <- true|
              r: r, (t readIfFail: [f: false. '']).
              f
            ] whileTrue.
            t close.
            os command: 'rm ', fn.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         toEncryptedString = ( |
            | 
            sh: 'echo \'', toString, '\' | openssl enc -aes-256-cbc -base64 -pbkdf2 -pass pass:OuR5e1F').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> 'user' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         toString = ( |
            | 
            (time current compactPrintString replace: ' ' With: '_'), ' ', name, ' ', email, ' ', passwordHash, '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         userNamed: n IfAbsent: blk = ( |
             f.
             u.
             us.
            | 
            (allRegisteredUsers includes: n) ifFalse: [^ blk value].
            f: os_file openForReading: databaseDirectory, '/', n, '.encrypted'.
            u: user fromEncryptedString: f contents.
            f close.
            u).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> 'users' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         validUsername: n = ( |
            | (n allSatisfy: [|:c| c isDigit || c isLetter || (c = '-')])).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wake: w Username: u Password: p IfFail: blk = ( |
            | nodes any wake: w Username: u Password: p IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'miocontrol' -> 'system' -> () From: ( | {
         'Category: public access\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         wake: w Username: u Password: p OnNode: n IfFail: blk = ( |
             r.
            | 
            r: n wake: w Username: u Password: p IfFail: blk.
            actionLogAdd: time current printString, ': Waking world named ', w.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         miocontrol = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules miocontrol.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'\')\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'0.1.0\')\x7fVisibility: public'
        
         revision <- '0.1.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'miocontrol' -> () From: ( | {
         'ModuleInfo: Module: miocontrol InitialContents: InitializeToExpression: (\'io_ourself_manager\')'
        
         tree <- 'io_ourself_manager'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'string' -> () From: ( | {
         'Category: transforming\x7fCategory: tokenizing\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         asTokensSeparatedBySubstring: s = ( |
             i.
             l.
             p.
            | 
            l: sequence copyRemoveAll.
            l add: 0.
            i: 0.
            [i < size] whileTrue: [
              findSubstring: s
                 StartingAt: i
                  IfPresent: [|:in| l add: in. i: in + 1]
                   IfAbsent: [i: size]].
            l add: size. 
            p: sequence copyRemoveAll.
            p add: (copyFrom: 0 UpTo: (l at: 1)).
            i: 1.
            [i < (l size - 1)] whileTrue: [
              p add: (copyFrom: (l at: i) + s size UpTo: (l at: i + 1)).
              i: i + 1].
            p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'string' -> () From: ( | {
         'Category: transforming\x7fCategory: tokenizing\x7fModuleInfo: Module: miocontrol InitialContents: FollowSlot\x7fVisibility: public'
        
         breakOnFirstSubstring: s = ( |
            | 
            findSubstring: s
               StartingAt: 0
                IfPresent: [|:in| (sequence copyRemoveAll add: (copyFrom: 0 UpTo: in))
                                               add: (copyFrom: in + s size UpTo: size)]
                 IfAbsent: [self]).
        } | ) 



 '-- Side effects'

 globals modules miocontrol postFileIn
