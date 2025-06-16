<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    [#assign siteRoot = cmsfn.root(content, "mgnl:page")!content ]
    <meta charset="utf-8" />
    <title>${siteRoot.windowTitle!}: ${content.windowTitle!content.title!}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    [#assign site = sitefn.site()!]
    [#assign theme = sitefn.theme(site)!]
    [#list theme.cssFiles as cssFile]
    <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
    [/#list]
  </head>

  <body class="${cmsfn.language()} is-preload integrated">
    <div id="page-wrapper">
      <!-- Header -->
      <div id="header" class="int-header">
        <h1><a id="logo" href="${cmsfn.link(siteRoot)}">${siteRoot.title!}</a></h1>
        [#include "../includes/header.ftl"]
      </div>

      <!-- Main -->
      <section class="wrapper style1">
        <div class="container">
          <div class="row gtr-200">
            <div class="col-3 col-12-narrower">
              <div id="sidebar1">
                [@cms.area name="sidebarL"/]
              </div>
            </div>

            <div class="col-6 col-12-narrower imp-narrower">
              <!-- Content -->
              <div id="content">
                [@cms.area name="center"/]
              </div>
            </div>

            <div class="col-3 col-12-narrower">
              <div id="sidebar2">
                [@cms.area name="sidebarR"/]
              </div>
            </div>
          </div>
        </div>
      </section>

    </div>

    [#include "../includes/footer.ftl"]
    <!-- Scripts -->
    ${resfn.js(["/int-module/webresources/js/.*js"])}
  </body>
</html>
