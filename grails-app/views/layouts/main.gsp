<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link type="text/css" href="${resource(dir:'css/menu',file:'menu.css')}" rel="stylesheet" />
        <link type="text/css" href="${resource(dir:'css/treeview',file:'treeview.css')}" rel="stylesheet" />
		<script type="text/javascript" src="${resource(dir:'js',file:'jquery.js')}"></script>
		<script type="text/javascript" src="${resource(dir:'js/menu',file:'menu.js')}"></script>
		<script type="text/javascript" src="${resource(dir:'js/treeview',file:'jquery.treeview.js')}"></script>
		<g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <calendar:resources lang="br" theme="tiger"/>
    	<div style="width:1280px; display:block; padding-left:50%; margin-left:-640px;">
	        <div id="spinner" class="spinner" style="display:none;">
	            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
	        </div>
	    <div id="grailsLogo"><a href="http://www.synchro.com.br" target="_blank"><img src="${resource(dir:'images',file:'logo_synchro.JPG')}" alt="Grails" border="0" /></a></div>
		<div align="right" style="font-weight: bold;">
			<g:message code="application.fullname" />
		</div>
		<div id="menu">
		<g:if test="${new LoginController().isLoggedIn()}">
			<ul class="menu">
				<li><a href="#" class="parent"><span><g:message
								code="menu.cadastro" /></span></a>
					<div>
						<ul>
							<g:each var="c"
								in="${grailsApplication.controllerClasses.sort { it.fullName } }">
								<g:if test="${c.name != 'Login' && c.name != 'Logout' && c.name != 'Ambiente'}">
									<li><g:link controller="${c.logicalPropertyName}">
											${c.name}
										</g:link></li>
								</g:if>
							</g:each>
						</ul>
					</div></li>
					<li>
						<g:link controller="host" action="overview">
							<span><g:message
								code="menu.overview" /></span>
						</g:link>
					</li>
			</ul>
			</g:if>
			<g:if test="${!new LoginController().isLoggedIn()}">
				<div align="right" style="float: right">
					<ul class="menu">
						<li><span><a href="${request.contextPath}/login/auth"
								class="parent"> login </a></span></li>
					</ul>
				</div>
			</g:if>
			<g:if test="${new LoginController().isLoggedIn()}">
				<div align="right" style="float: right">
					<ul class="menu">
						<li><span><a
								href="${request.contextPath}/logout/index" class="parent">
									logout </a></span></li>
					</ul>
				</div>
			</g:if>
		</div>
		<div style="width:1280px; padding-left:50%; margin-left:-640px;">
			<g:layoutBody />
		</div>
        </div>
    </body>
</html>