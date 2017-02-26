<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>index.html">
        <img class="nav navbar-nav navbar-left" src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>/images/logo.png"/>
      </a>
      <a class="navbar-brand" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>index.html">VigoJUG</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
          <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>meetings.html">Charlas</a></li>
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Archivo <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <%published_posts.take(10).each {post ->%>
                <li><a href="/${post.uri}">${post.title}</a></li>
            <%}%>
            <li class="divider"></li>
            <li><a href="${content.rootpath}${config.archive_file}">Ver más antiguos</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>${config.feed_file}">Feed RSS</a></li>
        <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>about.html">Sobre VigoJUG</a></li>
      </ul>
    </div>
  </div>
</div>
