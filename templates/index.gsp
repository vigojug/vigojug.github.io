<%include "header.gsp"%>

	<%include "menu.gsp"%>

  <div class="container">

    <div class="row">
      <div class="col-md-8 siteblock">
        <%published_posts.each {post ->%>
  		    <a href="${post.uri}"><h1>${post.title}</h1></a>
  		    <p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
  		    <p>${post.body}</p>
    	    <%}%>

  	    <hr />

  	    <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>
      </div>
      <div class="col-md-3 siteblock">
        toto
        <%include "sidekick.gsp"%>
      </div>
    </div>
    <div id="push"></div>
  </div>

<%include "footer.gsp"%>
