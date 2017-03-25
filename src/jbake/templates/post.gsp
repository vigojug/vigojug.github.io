<%include "header.gsp"%>

<%include "menu.gsp"%>

<div class="container">

	<div class="row">
		<div class="col-md-8 col-lg-9">
			<div class="siteblock">
				<div class="text-center">
					<h2>${content.title}</h2>
					<small>
						| <%content.tags.each {tag ->%>
              <a href="/tags/${tag}">${tag}</a> |
            <%}%>
					</small>
				</div>
				<hr/>
				<div class="text-justify">${content.body}</div>
				<hr/>
				<span class="text-center">
					<h6>Última actualización: ${new java.text.SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(content.date)}</h6>
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
