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
        <img class="nav navbar-nav navbar-left logo" src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>images/logo.png"/>
      </a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>meetings.html">Charlas</a></li>
        <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>vigoug.html">Comunidades</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Archivo <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <%published_posts.take(10).each {post ->%>
              <li><a href="/${post.uri}">${post.title}</a></li>
            <%}%>
            <li class="divider"></li>
            <li><a href="${content.rootpath}${config.archive_file}">Ver todos</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tag's <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <% alltags.collect { tag -> [tag, posts.findAll { post -> post.tags.contains(tag)}.size()]}
                      .sort    { tag -> String.format("%03d%s", 1000 - tag[1], tag[0].toLowerCase())}
                      .take(10)
                      .each    { tagWithCount ->  %>
               <li><a href="/tags/${tagWithCount[0]}.html">${tagWithCount[0]} (${tagWithCount[1]})</a></li>
            <%}%>
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
