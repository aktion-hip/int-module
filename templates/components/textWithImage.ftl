<article>
  <header>
    [#if content.title?has_content]
      <h2>${content.title!}</h2>
    [/#if]

    [#if content.subtitle?has_content]
      <p>${content.subtitle!}</p>
    [/#if]
  </header>

  [#if content.image?has_content]
    [#assign image = damfn.getAsset(content.image)]
    [#assign imageLink = image.link]
    <span class="image featured">
      <img src="${imageLink!}" alt='${content.caption!"image"}'>
    </span>
  [/#if]

  <p>
    ${cmsfn.decode(content).content!}
  </p>
</article>
