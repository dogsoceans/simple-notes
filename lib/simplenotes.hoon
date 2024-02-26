/-  *simplenotes
:: add notes to the list
::
|%
++  make-note
  ^-  note
  ['cattitle' 'dog content']

++  make-note-list
  ^-  (list note)
  `(list note)`~[make-note make-note ['three' 'four']]  

++  make-simplenotes
  ^-  simplenotes
  `simplenotes`[%0 make-note-list]
::takes simple notes returns list
++  get-note-list
  |=  =simplenotes
  ^-  (list note)
  note-list.simplenotes

::recurse note list reuturn content
::
++  get-content-list
  |=  note-list=(list note)
  ^-  (list @t)
  =|  content-list=(list @t)
  |- 
  ?~    note-list
    content-list
  %=  $
  content-list  (snoc content-list content.i.note-list)
  note-list  t.note-list
  ==


--