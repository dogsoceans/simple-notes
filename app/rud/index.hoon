/-  *simplenotes
/+  rudder, server
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
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
      ==
      ;body
        ;+  ?~  msg  :/""
            ?:  gud.u.msg
              ;div#status.green:"{(trip txt.u.msg)}"
            ;div#status.red:"{(trip txt.u.msg)}"
      ;p: count {<note-list.simplenotes>}
        ;form(method "post")
          ;input(type "text", name "title", placeholder "your title...");
          ;textarea(name "content", placeholder "your content here");
          ;input(type "submit", name "save", value "save");
        ==
      ==
    ==
  --
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?:  (~(has by args) 'save')
    [%save (~(got by args) 'title') (~(got by args) 'content')]
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
  [%next 'simplenotes' brief]
--
