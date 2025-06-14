<section class="wrapper style2">
  <div class="container">
    <header class="major">
      <h2>${content.title!}</h2>
      [#if content.content?has_content]
        ${cmsfn.decode(content).content!}
      [/#if]
    </header>
  </div>
</section>