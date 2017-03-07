<%include "header.gsp"%>

<%include "menu.gsp"%>

<div class="container">

	<div class="row">
    <div class="col-lg-9 col-md-8">
			<div class="siteblock">
				<h2 class="text-center">${content.title}</h2>
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
