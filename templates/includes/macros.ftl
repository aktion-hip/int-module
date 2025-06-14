[#macro subNavigation parent level=0]
    [#if level < 2]
        [#assign children = cmsfn.children(parent, "mgnl:page") ]
        [#if children?size > 0]
            <ul>
                [#list children as child]
                    [#if !hideInNav(child)]
                        <li><a href="${cmsfn.link(child)}">${child.navigationTitle!}</a>[@subNavigation parent=child level=level+1 /]</li>
                    [/#if]
                [/#list]
            </ul>
        [/#if]
    [/#if]
[/#macro]
