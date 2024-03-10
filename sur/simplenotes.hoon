|%
+$  action
  $?  [%save =note] 
      [%del index=@ud]
      [%open index=@ud]
      [%new ~]
  ==
+$  content  @t
+$  index  @ud
+$  note
  $:
    =content
  ==
+$  simplenotes  simplenotes-0
+$  simplenotes-0
  $:
    %0
    note-list=(list note) 
    current-note=(unit @ud) ::index
  ==
--


