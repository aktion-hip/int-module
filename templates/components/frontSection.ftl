<section class="frontSection wrapper style1">
  <div class="container">
    [#if content.image?has_content]
      [#assign image = damfn.getAsset(content.image)]
      [#assign imageLink = image.link]
      <section class="two-column">
        <div class="col left">
          [#if content.styleOption == "imageLeft"]
            <img src='${imageLink!}' class='img-responsive' alt='${content.caption!"image"}'>
          [#else]
            [#if content.title?has_content]
              <h3>${content.title!}</h3>
            [/#if]
            <p>${cmsfn.decode(content).content!}</p>
          [/#if]
        </div>
        <div class="col right">
          [#if content.styleOption == "imageLeft"]
            [#if content.title?has_content]
              <h3>${content.title!}</h3>
            [/#if]
            <p>${cmsfn.decode(content).content!}</p>
          [#else]
            <img src='${imageLink!}' class='img-responsive' alt='${content.caption!"image"}'>
          [/#if]
        </div>
      </section>
    [#else]
      <section class="full-width">
        [#if content.title?has_content]
          <h2>${content.title!}</h2>
        [/#if]
        <p>${cmsfn.decode(content).content!}</p>
      </section>
    [/#if]
  </div>
</section>
