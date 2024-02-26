/-  *simplenotes
/+  default-agent, dbug, rudder, verb, server
/~  pages  (page:rudder simplenotes action)  /app/rud
!:
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  simplenotes
+$  card  card:agent:gall
--
%+  verb  |
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
++  on-leave  on-leave:def
++  on-peek  on-peek:def
++  on-agent  on-agent:def
++  on-fail  on-fail:def
++  on-init
  ^-  (quip card _this)
  :_  this
  :~
    [%pass /eyre/connect %arvo %e %connect [~ /[dap.bowl]] dap.bowl]
  ==

++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
    `this(state old)
    
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?>  =(%handle-http-request mark)
  =;  out=(quip card simplenotes)
    [-.out this(state +.out)]
      %.  
        :+
          bowl
          !<(order:rudder vase)
          state
      %:  (steer:rudder simplenotes action)
        pages
        %:  point:rudder
          /simplenotes
          &
          ~(key by pages)
        ==
        (fours:rudder state)
        |=  act=action
          ^-  $@(@t [brief:rudder (list card) simplenotes])
            ?-  -.act
        %save  ``[%0 (snoc note-list.state text.act)]
          ==
      ==
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?+    path  (on-watch:def path) 
      [%http-response *]
    `this
  ==
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  `this
--