<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link type="text/css" href="${resource(dir:'css/menu',file:'menu.css')}" rel="stylesheet" />
		<script type="text/javascript" src="${resource(dir:'js',file:'jquery.js')}"></script>
		<script type="text/javascript" src="${resource(dir:'js/menu',file:'menu.js')}"></script>
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
    	<div style="width:1280px; display:block; padding-left:50%; margin-left:-640px;">
	        <div id="spinner" class="spinner" style="display:none;">
	            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
	        </div>
	    <div id="grailsLogo"><a href="http://www.synchro.com.br" target="_blank"><img src="${resource(dir:'images',file:'logo_synchro.JPG')}" alt="Grails" border="0" /></a></div>
		<div align="right" style="font-weight: bold;">
			<g:message code="application.fullname" />
		</div>
		<div id="menu">
			<ul class="menu">
				<li><a href="#" class="parent"><span><g:message
								code="menu.cadastro" /></span></a>
					<div>
						<ul>
							<g:each var="c"
								in="${grailsApplication.controllerClasses.sort { it.fullName } }">
								<li><g:link controller="${c.logicalPropertyName}">
										${c.name}
									</g:link></li>
							</g:each>
						</ul>
					</div></li>
			</ul>
		</div>
		<g:layoutBody />
        </div>
    </body>
</html>