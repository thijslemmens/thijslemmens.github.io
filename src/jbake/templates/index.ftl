<#import "macros.ftl" as macros>

<@macros.html>

      <#list published_posts?sort_by("date") as post>
            <@macros.section post.date?date post.title post.body post.uri />
        <div class="is-divider"> </div>
      </#list>



<#--<!-- Image &ndash;&gt;-->
<#--<section class="hero ">-->
<#--  <div class="hero-body">-->
<#--    <div class="container">-->
<#--      <div class="columns">-->
<#--        <div class="column is-8 is-offset-2">-->
<#--          <figure class="image is-16by9">-->
<#--            <img src="../images/first-post.png" alt="">-->
<#--          </figure>-->
<#--        </div>-->
<#--      </div>-->



<#--      <div class="is-divider"></div>-->

<#--      <section class="section">-->
<#--        <div class="columns">-->
<#--          <div class="column is-8 is-offset-2">-->
<#--            <div class="content is-medium">-->
<#--              <h2 class="subtitle is-4">December 25, 2018</h2>-->
<#--              <h1 class="title">Getting Started</h1>-->
<#--              <p>This is a starter template for creating a beautiful, customizable blog with minimal-->
<#--                effort. You’ll only have to change a few settings and you’re ready to go. As with all Jigsaw sites,-->
<#--                configuration settings can be found in config</p>-->
<#--            </div>-->
<#--          </div>-->
<#--        </div>-->
<#--      </section>-->


<#--    </div>-->
<#--  </div>-->
<#--</section>-->

<#--<!-- newsletter &ndash;&gt;-->
<#--<section class="section">-->
<#--  <div class="columns">-->
<#--    <div class="column is-10 is-offset-1">-->
<#--      <div class="container has-text-centered is-fluid">-->
<#--        <div class="hero is-light">-->
<#--          <div class="hero-body">-->
<#--            <h2 class="title is-4">Sign up for our newsletter</h2>-->
<#--            <div class="column is-6 is-offset-3">-->
<#--              <div class="field has-addons has-addons-centered">-->
<#--                <div class="control is-expanded">-->
<#--                  <input class="input " type="text" placeholder="Email address">-->
<#--                </div>-->
<#--                <div class="control">-->
<#--                  <a class="button is-info">-->
<#--                    Subscribe-->
<#--                  </a>-->
<#--                </div>-->
<#--              </div>-->
<#--            </div>-->
<#--          </div>-->
<#--        </div>-->
<#--      </div>-->
<#--    </div>-->
<#--  </div>-->
<#--</section>-->

<#--<!-- Articles &ndash;&gt;-->

<#--<section class="hero ">-->
<#--  <div class="hero-body">-->
<#--    <div class="container">-->

<#--      <section class="section">-->
<#--        <div class="columns is-variable is-8">-->
<#--          <div class="column is-5 is-offset-1 ">-->
<#--            <div class="content is-medium">-->
<#--              <h2 class="subtitle is-5 has-text-grey">December 23, 2018</h2>-->
<#--              <h1 class="title has-text-black is-3">Custom 404 Pages</h1>-->
<#--              <p class="has-text-dark">This starter template includes a custom 404 Not Found error page, located at-->
<#--                /source/404.blade.php.-->
<#--                To preview the 404 page, you can visit /404 in your browser. Depending...</p>-->
<#--            </div>-->
<#--          </div>-->
<#--          <div class="column is-5">-->
<#--            <div class="content is-medium">-->
<#--              <h2 class="subtitle is-5 has-text-grey">December 25, 2018</h2>-->
<#--              <h1 class="title has-text-black is-3">Fuse Search</h1>-->
<#--              <p class="has-text-dark">To provide fast, local search of your blog, this starter template comes with a-->
<#--                pre-built Vue.js-->
<#--                component that uses Fuse.js. Fuse.js is a "lightweight fuzzy-search library with no...</p>-->
<#--            </div>-->
<#--          </div>-->
<#--        </div>-->
<#--      </section>-->

<#--      <div class="is-divider"></div>-->

<#--      <section class="section">-->
<#--        <div class="columns is-variable is-8">-->
<#--          <div class="column is-5 is-offset-1">-->
<#--            <div class="content is-medium">-->
<#--              <h2 class="subtitle is-5 has-text-grey">December 25, 2018</h2>-->
<#--              <h1 class="title has-text-black is-3">Getting Started</h1>-->
<#--              <p class="has-text-dark">This is a starter template for creating a beautiful, customizable blog with-->
<#--                minimal-->
<#--                effort. You’ll only have to change a few settings and you’re ready to go. As with all Jigsaw sites,-->
<#--                configuration settings can be found in config</p>-->
<#--            </div>-->
<#--          </div>-->
<#--          <div class="column is-5">-->
<#--            <div class="content is-medium">-->
<#--              <h2 class="subtitle is-5 has-text-grey">December 25, 2018</h2>-->
<#--              <h1 class="title has-text-black is-3">Getting Started</h1>-->
<#--              <p class="has-text-dark">This is a starter template for creating a beautiful, customizable blog with-->
<#--                minimal-->
<#--                effort. You’ll only have to change a few settings and you’re ready to go. As with all Jigsaw sites,-->
<#--                configuration settings can be found in config</p>-->
<#--            </div>-->
<#--          </div>-->
<#--        </div>-->
<#--      </section>-->


<#--    </div>-->
<#--  </div>-->
<#--</section>-->
</@macros.html>