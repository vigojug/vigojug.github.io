<%include "header.gsp"%>

<%include "menu.gsp"%>

<div class="container">

  <div class="row">
		<div class="col-md-12 siteblock text-center">
      <img src="images/banner.png">
    </div>
  </div>

  <div class="row">
    <div class="col-md-9">
      <div class="col-md-12 siteblock">
        <%published_posts.take(5).each {post ->%>
  		    <a href="${post.uri}"><h1>${post.title}</h1></a>
  		    <h6>${new java.text.SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(post.date)}</h6>
  		    <p class="text-justify">${post.body}</p>
          <div class="text-center">
            <hr width="60%"/>
          </div>
    	    <%}%>

  	    <div class="text-center">
          <h4>Posts más antiguos en nuestro <a href="${content.rootpath}${config.archive_file}">archivo</a>.</h4>
        </div>
      </div>
    </div>
    <div class="col-md-3 siteblock">
			<%include "sidekick.gsp"%>
		</div>
  </div>
  <div id="push"></div>
</div>

<%include "footer.gsp"%>
