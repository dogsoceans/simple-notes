|%
+$  action
  $?  [%save text=@t] 

  ==
+$  title  @t
+$  content  @t
+$  note
  $:
::    =title
    =content
  ==
+$  simplenotes  simplenotes-0
+$  simplenotes-0
  $:
    %0
    note-list=(list note) 
  ==
--
