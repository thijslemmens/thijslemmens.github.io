<#import "macros.ftl" as macros>

<@macros.html>
  <section class="section">
    <div class="columns">
      <div class="column is-8 is-offset-2">
        <div class="content is-medium">
          <h2 class="subtitle is-4">${content.date?date}</h2>
          <h1 class="title">${content.title}</h1>
          ${content.body}

          <#if content.tweet??>
          <div class="is-divider"></div>
          <div id="tweet"></div>
          <script>
                  twttr.widgets.createTweet(
                  '${content.tweet}',
                  document.getElementById('tweet')
                  );

          </script>
          </#if>
        </div>
      </div>
    </div>
  </section>
</@macros.html>