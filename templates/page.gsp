<%include "header.gsp"%>

<%include "menu.gsp"%>

<div class="container">

	<div class="row">
		<div class="col-md-8 siteblock">
			<h1>${content.title}</h1>
			<div class="text-justify">${content.body}</div>
			<hr/>
			<span class="text-center">
				<h6>Última actualización: ${new java.text.SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(content.date)}</h6>
			</span>
		</div>
		<div class="col-md-3 siteblock">
			<%include "sidekick.gsp"%>
		</div>
	</div>
	<div id="push"></div>
</div>

<%include "footer.gsp"%>
