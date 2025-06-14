<section>
  [#if content.title?has_content]
    <h3>${content.title!}</h3>
  [/#if]

  [#if content.content?has_content]
    ${cmsfn.decode(content).content!}
  [/#if]  

  [#if content.footer?has_content]
    <footer>
      <a href="${cmsfn.link(cmsfn.contentById(content.footerURL!))}" class="button">${content.footer!}</a>
    </footer>
  [/#if]
</section>
