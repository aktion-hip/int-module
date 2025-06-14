[#function isEqual item1 item2]
  [#return item1 == item2]
[/#function]

[#function isEqualPath content1 content2]
  [#return content1.@path == content2.@path]
[/#function]

[#function isAncestorOf possibleAncestor contentToCheck]
  [#assign ancestors = cmsfn.ancestors(contentToCheck, "mgnl:page") ]
  [#return ancestors?seq_contains(possibleAncestor)]
[/#function]

[#function hideInNav page]
  [#return page.hideInNav!false]
[/#function]
