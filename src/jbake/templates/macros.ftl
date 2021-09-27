<#macro html>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Blog - Tailsaw </title>
  <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-divider@0.2.0/dist/css/bulma-divider.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/styles/default.min.css">
  <link rel="stylesheet" href="${content.rootpath}css/copy.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/highlight.min.js"></script>
  <script>hljs.highlightAll();</script>
  <script src="https://platform.twitter.com/widgets.js"></script>


  <style>
      nav.navbar {
          height: 6rem !important;
          box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06) !important;
      }
  </style>
</head>

<body>

<!-- START NAV -->
<nav class="navbar">
  <div class="container">
    <div class="navbar-brand">
      <a class="navbar-item" href="${content.rootpath}">
        <span class="is-size-2 has-text-primary">thijslemmens.eu</span>
      </a>
      <span class="navbar-burger burger" data-target="navbarMenu">
          <span></span>
          <span></span>
          <span></span>
        </span>
    </div>
    <div id="navbarMenu" class="navbar-menu">
      <div class="navbar-end">
        <!--div class=" navbar-item">
          <div class="control has-icons-left">
            <input class="input is-rounded" type="email" placeholder="Search">
            <span class="icon is-left">
                <i class="fa fa-search"></i>
              </span>
          </div>
        </div-->

        <a class="navbar-item is-active is-size-5 has-text-weight-semibold">
          <span class="icon" style="color: var(--github);">
            <i class="fab fa-lg fa-github-alt"></i>
          </span>
        </a>
        <a class="navbar-item is-size-5 has-text-weight-semibold">
          Examples
        </a>
        <a class="navbar-item is-size-5 has-text-weight-semibold">
          Features
        </a>
      </div>
    </div>
  </div>
</nav>
<!-- END NAV -->
<section class="hero ">
  <div class="hero-body">
    <div class="container">
<#nested>
    </div>
  </div>
</section>

<footer class="footer">
  <div class="content has-text-centered">
    <p>
      <strong>Bulma - Blog theme</strong> by <a href="https://gonzalojs.com">Gonzalo Gutierrez</a>. Based on the <a
              href="http://jigsaw-blog-staging.tighten.co/">jigsaw-blog</a>. The source code is licensed
      <a href="http://opensource.org/licenses/mit-license.php">MIT</a>
    </p>
  </div>
</footer>

<script>
    function addCopyButtons(clipboard) {
        document.querySelectorAll('pre > code').forEach(function (codeBlock) {
            var button = document.createElement('button');
            button.className = 'copy-code-button';
            button.type = 'button';
            button.innerText = 'Copy';

            button.addEventListener('click', function () {
                clipboard.writeText(codeBlock.innerText).then(function () {
                    /* Chrome doesn't seem to blur automatically,
                       leaving the button in a focused state. */
                    button.blur();

                    button.innerText = 'Copied!';

                    setTimeout(function () {
                        button.innerText = 'Copy';
                    }, 2000);
                }, function (error) {
                    button.innerText = 'Error';
                });
            });

            var pre = codeBlock.parentNode;
            pre.parentNode.insertBefore(button, pre);

        });
    }

    if (navigator && navigator.clipboard) {
        addCopyButtons(navigator.clipboard);
    } else {
        var script = document.createElement('script');
        script.src = 'https://cdnjs.cloudflare.com/ajax/libs/clipboard-polyfill/2.7.0/clipboard-polyfill.promise.js';
        script.integrity = 'sha256-waClS2re9NUbXRsryKoof+F9qc1gjjIhc2eT7ZbIv94=';
        script.crossOrigin = 'anonymous';
        script.onload = function() {
            addCopyButtons(clipboard);
        };

        document.body.appendChild(script);
    }



</script>
<script>
    document.addEventListener('DOMContentLoaded', () => {

        // Get all "navbar-burger" elements
        const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

        // Check if there are any navbar burgers
        if ($navbarBurgers.length > 0) {

            // Add a click event on each of them
            $navbarBurgers.forEach(el => {
                el.addEventListener('click', () => {

                    // Get the target from the "data-target" attribute
                    const target = el.dataset.target;
                    const $target = document.getElementById(target);

                    // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
                    el.classList.toggle('is-active');
                    $target.classList.toggle('is-active');

                });
            });
        }

    });
</script>

</body>

</html>
</#macro>

<#macro section subtitle title body link>
  <section class="section">
    <div class="columns">
      <div class="column is-8 is-offset-2">
        <a href="${link}">
          <div class="content is-medium">
            <h2 class="subtitle is-4">${subtitle}</h2>
            <h1 class="title">${title}</h1>
              ${body}
          </div>
        </a>
      </div>
    </div>
  </section>
</#macro>