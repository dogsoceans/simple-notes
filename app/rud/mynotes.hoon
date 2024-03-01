/-  *simplenotes
/+  rudder, server, *simplenotes
!:
^-  (page:rudder simplenotes action)
|_  [=bowl:gall =order:rudder =simplenotes]
++  build
  |=  $:  args=(list [k=@t v=@t])
          msg=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"simple notes"
        ;style:"form \{ display: inline-block; }"
        ;meta(charset "utf-8");
        ;style:  {style} 
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
      ==
      ;body
        ;+  ?~  msg  :/""
            ?:  gud.u.msg
              ;div#status.green:"{(trip txt.u.msg)}"
            ;div#status.red:"{(trip txt.u.msg)}"
        ;div.window
          ;div.title-bar
            ;div.title: Simple Notes
              ;div.window-controls
                ;button.minimize: -
                ;button.maximize: □
              ;button.close: x
              ==
          == 
          ;div.mynotes-window
            ;ul
              ;*  %-  head
                  %^  spin  note-list.simplenotes  0
                  |=  [n=note i=@ud]
                  [(render-list i n) +(i)] 
            == 
          ==  
        == 
      ==
    == 
  ++  render-list
    |=  [i=@ud n=note]
    ;li
      ; {(trip content.n)}
      ;form(method "post")
        ;input(type "submit", name "del", value "x");
        ;input(type "hidden", name "index", value "{(scow %ud i)}");
      ==
    ==
  --
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?:  (~(has by args) 'save')
    [%save (~(got by args) 'content')]
  ?.  &((~(has by args) 'del') (~(has by args) 'index'))
    ~
  ?~  ind=(rush (~(got by args) 'index') dem:ag)
    ~
  ?:  (gte u.ind (lent note-list.simplenotes))
    'note is gone!'
  [%del u.ind]
::
++  final
  |=  [success=? =brief:rudder]
  ^-  reply:rudder
  ?.  success  (build ~ `[| `@t`brief])
  [%next 'mynotes' brief]
--
