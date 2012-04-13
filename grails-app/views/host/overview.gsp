
<%@ page import="br.com.synchro.ambinventario.Host" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'host.label', default: 'Host')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
	<!--[if IE]> 
<style type='text/css'> 
        ul { 
                list-style-type: none; 
        } 
</style> 
<![endif]-->
	<div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <br/>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="nohoverlist" style="width:1280px; display:block; padding-left:50%; margin-left:-640px;">
                <table style="padding: 0px;margin:0 auto;width:1280px;">
                    <thead>
                        <tr>
                            <th><g:message code="host.nome.label" default="Hosts - Overview" /></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${hostInstanceList}" status="i" var="hostInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                         	<td>
								<ul id="browser" class="filetree">
								<g:if test="${!hostInstance.softwareList().isEmpty()}">
									<li><span class="folder">${hostInstance.nome}</span>
										<div class="details">
											<div class="detailsBody">
												<b>SO:</b> ${hostInstance.so}<br/>
												<b>RAM Total:</b> ${hostInstance.ram} MB<br/>
												<b>RAM Disponível:</b><span class="value criticidadeMemoria${hostInstance.criticidadeMemoria(message(code: 'conf.ambiente.ram.nivel'))}"> ${hostInstance.memoriaRestante()} MB</span><br/>
												<b>Disco:</b> ${hostInstance.disco} MB<br/>
												<g:if test="${!hostInstance.fisico}">
													<b>Local:</b> ${hostInstance.local}<br/>
												</g:if>
											</div>
										</div>
										<ul>
											<g:each in="${hostInstance.softwareList()}" status="j" var="softwareInstance">
												<g:if test="${!softwareInstance.instancias.isEmpty()}">
													<li><span class="software">${softwareInstance.software}</span>
														<ul id="folder${softwareInstance.software}">
															<g:each in="${softwareInstance.instancias}" status="k" var="instanciaInstance">
																<li><span class="file">${instanciaInstance.nome}</span>
																<div class="details">
																	<div class="detailsBody">
																		<b>URL Console:</b><a href="${instanciaInstance.urlConsole}" target="_blank"> ${instanciaInstance.urlConsole}</a><br/>
																		<b>User:</b> ${instanciaInstance.usuario}<br/>
																		<b>Pass:</b> ${instanciaInstance.senha}<br/>
																		<b>RAM:</b> ${instanciaInstance.ram} MB<br/>
																		<b>Solicitante:</b> ${instanciaInstance.solicitante}<br/>
																		<b>Periodo:</b> ${instanciaInstance.periodoDeUso}<br/>
																	</div>
																</div>
																</li>
															</g:each>
														</ul>
													</li>
												</g:if>
												<g:if test="${softwareInstance.instancias.isEmpty()}">
													<span class="folder">${softwareInstance.software}</span>
												</g:if>
											</g:each>
										</ul></li>
								</g:if>
								<g:if test="${hostInstance.softwareList().isEmpty()}">
									<li><span class="folder">${hostInstance.nome}</span>
									<div class="details">
										<div class="detailsBody">
											<b>SO:</b> ${hostInstance.so}<br/>
											<b>RAM Total:</b> ${hostInstance.ram} MB<br/>
											<b>RAM Disponível:</b><span class="value criticidadeMemoria${hostInstance.criticidadeMemoria(message(code: 'conf.ambiente.ram.nivel'))}"> ${hostInstance.memoriaRestante()} MB</span><br/>
											<b>Disco:</b> ${hostInstance.disco} MB<br/>
											<g:if test="${!hostInstance.fisico}">
												<b>Local:</b> ${hostInstance.local}<br/>
											</g:if>
										</div>
									</div></li>
								</g:if>								
								</ul>
							</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            
            <div class="paginateButtons">
                <g:paginate total="${hostInstanceTotal}" />
            </div>
        </div>
		<script type="text/javascript">
			$(document).ready(function(){
				$(".filetree").treeview({
					collapsed: true});
				jQuery(".details").hide();
				  //toggle the componenet with class msg_body
				  jQuery(".folder,.file").click(function()
				  {
				    jQuery(this).next(".details").slideToggle(500);
				  });
				  jQuery(".hitarea").click(function()
						  {
						    jQuery(this).next(".folder").next(".details").slideToggle(500);
				  });
					
			});
		</script>
</body>
</html>
