<%include "header.gsp"%>

	<%include "menu.gsp"%>

  <div class="container">

    <div class="row">
			<div class="col-md-10 col-md-offset-1 siteblock">
        <img src="images/banner.png">
      </div>
    </div>

    <div class="row">
      <div class="col-md-9">
        <div class="col-md-12 siteblock">
          <%published_posts.each {post ->%>
    		    <a href="${post.uri}"><h1>${post.title}</h1></a>
    		    <p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
    		    <p>${post.body}</p>
      	    <%}%>

    	    <hr />

    	    <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>
        </div>
      </div>
      <div class="col-md-3">
         <div class="col-md-12 siteblock">
           <%include "sidekick.gsp"%>
         </div>
      </div>
    </div>
    <div id="push"></div>
  </div>

<%include "footer.gsp"%>
