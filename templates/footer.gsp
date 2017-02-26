

    <div id="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <h4>Vigo Java User Group</h4> (ou Vigo JUG que é máis corto) é unha comunidade técnica nacida en Vigo co propósito de xuntar a profesionais e aficionados dispostos a compartir experiencias, aprender e divertirse cos linguaxes que se executan na JVM (Groovy, Scala, Kotlin, etc.). Principalmente as reunións e eventos van dirixidas a programadores, pero non se descartan colaboracións en sistemas o incluso de xestión de proxectos (sempre relacionados ca JVM, iso si).
          </div>
          <div class="col-md-offset-1 col-md-3">
            <h4><b>Síguenos:</b></h4>
            <a href="https://twitter.com/vigojug" class="twitter-follow-button">Follow @vigojug</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script><br/>
            <a class="github-button" href="https://github.com/vigojug" data-count-href="/vigojug/followers" data-count-api="/users/vigojug#followers" data-count-aria-label="# followers on GitHub" aria-label="Follow @vigojug on GitHub">Follow @vigojug</a><br/>
            <script async defer src="https://buttons.github.io/buttons.js"></script>
            <a href="http://phpvigo.slack.com">
              <img src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>/images/slack.png"> phpvigo.slack.com<br/>
              <ul>Canal: <b>#vigojug</b></ul>
            </a>
          </div>
        </div>
      </div>
      <p class="muted credit text-center">
        &copy; 2017 | Mixed with <a href="http://getbootstrap.com/">Bootstrap v3.1.1</a> | Baked with <a href="http://jbake.org">JBake ${version}</a>
      </p>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/jquery-1.11.1.min.js"></script>
    <script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/bootstrap.min.js"></script>
    <script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/prettify.js"></script>

  </body>
</html>
