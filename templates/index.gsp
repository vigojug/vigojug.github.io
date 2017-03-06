<?xml version="1.0" encoding="UTF-8"?>
<%include "header.gsp"%>
<%include "menu.gsp"%>
<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <div class="header text-center">
        <img src="images/banner.png" class="header-banner">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-9 col-md-8">
      <div class="siteblock">
        <%published_posts.take(5).each {post ->%>
        <span class="text-center">
          <a href="${post.uri}">
            <h2>${post.title}</h2>
          </a>
        </span>
        <h6>${new java.text.SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(post.date)}</h6>
        <p class="text-justify">${post.body}</p>
        <div class="text-center">
          <hr width="60%"/>
        </div>
        <%}%>
        <div class="more-posts">
          Posts más antiguos en nuestro <a href="${content.rootpath}${config.archive_file}">archivo</a>.
        </div>
      </div>
    </div>
    <div class="col-lg-3 col-md-4">
      <%include "sidekick.gsp"%>
    </div>
  </div>
</div>
<div id="push"></div>
<%include "footer.gsp"%>
