[#include "./functions.ftl"]
<nav id="nav">
    <ul class="int-navigation">
    [#if isEqualPath(siteRoot, content)]
        <li class="current"><a href="${cmsfn.link(siteRoot)}">${siteRoot.navigationTitle!"Home"}</a></li>
    [#else]
        <li><a href="${cmsfn.link(siteRoot)}">${siteRoot.navigationTitle!"Home"}</a></li>
    [/#if]
    [#list cmsfn.children(siteRoot, "mgnl:page") as childOfRoot]
        [#if !childOfRoot.hideInNav!false]
            [#if isEqualPath(childOfRoot, content)]
                <li class="current"><a href="${cmsfn.link(childOfRoot)}">${childOfRoot.navigationTitle!}</a></li>
            [#elseif isAncestorOf(childOfRoot, content)]
                <li class="current"><a href="${cmsfn.link(childOfRoot)}">${childOfRoot.navigationTitle!}</a></li>
            [#else]
                <li><a href="${cmsfn.link(childOfRoot)}">${childOfRoot.navigationTitle!}</a></li>
            [/#if]
        [/#if]
    [/#list]
    </ul>
</nav>