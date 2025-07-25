<section class="col-6 col-12-narrower">
  <div class="box post person">
    [#if content.image?has_content]
      [#assign image = damfn.getAsset(content.image)]
      [#assign imageLink = image.link]
      <span class="image left">
        <img src='${imageLink!}' class='img-responsive' alt='${content.title!"portrait"}'>
      </span>
    [/#if]
    
    <div class="inner">
      [#if content.title?has_content]
        <h3>${content.title!}</h3>
      [/#if]
      [#if content.desc?has_content]
        <p>${cmsfn.decode(content).desc!}</p>
      [/#if]
    </div>
  </div>
</section>
