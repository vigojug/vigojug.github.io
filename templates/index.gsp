<%include "header.gsp"%>

	<%include "menu.gsp"%>

    <div class="side">
        <ul>
            <li>item 1</li>
            <li>item 2</li>
            <li>item 3</li>
        </ul>
    </div>

        <div class="page-header">
            <img src="images/banner.png">
        </div>
    	<%published_posts.each {post ->%>
		    <a href="${post.uri}"><h1>${post.title}</h1></a>
		    <p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
		    <p>${post.body}</p>
  	    <%}%>
	
	    <hr />
	
	    <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>


<%include "footer.gsp"%>
