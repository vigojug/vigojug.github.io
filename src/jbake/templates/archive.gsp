<%include "header.gsp"%>

<%include "menu.gsp"%>

<div class="container">

	<div class="row">
		<div class="col-md-8 col-lg-9">
			<div class="siteblock">
				<h2>Archivos del blog</h2>
				<hr/>
				<div class="text-justify">
        		<%def last_month=null;%>
						<%published_posts.each {post ->%>
							<%if (last_month) {%>
								<%if (new java.text.SimpleDateFormat("MMMM yyyy", Locale.ENGLISH).format(post.date) != last_month) {%>
									</ul>
									<h4>${new java.text.SimpleDateFormat("MMMM yyyy", Locale.ENGLISH).format(post.date)}</h4>
									<ul>
								<%}%>
							<% } else { %>
								<h4>${new java.text.SimpleDateFormat("MMMM yyyy", Locale.ENGLISH).format(post.date)}</h4>
								<ul>
							<% }%>

							<li>
								${post.date.format("dd")} - <a href="${content.rootpath}${post.uri}">${post.title}</a>
							</li>
							<%last_month = new java.text.SimpleDateFormat("MMMM yyyy", Locale.ENGLISH).format(post.date)%>
						<%}%>
					</ul>
				</div>
				<hr/>
				<span class="text-center">
					<h6>Última actualización: ${new java.text.SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(published_date)}</h6>
				</span>
			</div>
		</div>
		<div class="col-md-4 col-lg-3">
			<%include "sidekick.gsp"%>
		</div>
	</div>
	<div id="push"></div>
</div>

<%include "footer.gsp"%>
