
<%@ page import="br.com.synchro.ambinventario.Ambientes"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'ambientes.label', default: 'Ambientes')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div class="nav">
		<span class="menuButton"><a class="home"
			href="${createLink(uri: '/')}"><g:message
					code="default.home.label" /></a></span> <span class="menuButton"><g:link
				class="list" action="list">
				<g:message code="default.list.label" args="[entityName]" />
			</g:link></span> <span class="menuButton"><g:link class="create"
				action="create">
				<g:message code="default.new.label" args="[entityName]" />
			</g:link></span>
	</div>
	<div class="body">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<div class="dialog">
			<table>
				<tbody>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.id.label" default="Id" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "id")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.ambiente.label" default="Ambiente" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "ambiente")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.instrucaoAdicionais.label"
								default="Instrucao Adicionais" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "instrucaoAdicionais")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.fisicaVirtual.label" default="Fisica Virtual" /></td>

						<td valign="top" class="value">
							${ambientesInstance?.fisicaVirtual?.encodeAsHTML()}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.objSO.label" default="Obj SO" /></td>

						<td valign="top" class="value"><g:link
								controller="sistemasOperacionais" action="show"
								id="${ambientesInstance?.objSO?.id}">
								${ambientesInstance?.objSO?.encodeAsHTML()}
							</g:link></td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.descricaoAmbiente.label"
								default="Descricao Ambiente" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "descricaoAmbiente")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.memoriaTotal.label" default="Memoria Total" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "memoriaTotal")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.objInstancia.label" default="Obj Instancia" /></td>

						<td valign="top" style="text-align: left;" class="value">
							<ul>
								<g:each in="${ambientesInstance.objInstancia}" var="o">
									<li><g:link controller="instancias" action="show"
											id="${o.id}">
											${o?.encodeAsHTML()}
										</g:link></li>
								</g:each>
							</ul>
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.obsAmbiente.label" default="Obs Ambiente" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "obsAmbiente")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.senhaConsole.label" default="Senha Console" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "senhaConsole")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.urlConsole.label" default="Url Console" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "urlConsole")}
						</td>

					</tr>

					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="ambientes.usuarioConsole.label" default="Usuario Console" /></td>

						<td valign="top" class="value">
							${fieldValue(bean: ambientesInstance, field: "usuarioConsole")}
						</td>

					</tr>

				</tbody>
			</table>
		</div>
		<div class="buttons">
			<g:form>
				<g:hiddenField name="id" value="${ambientesInstance?.id}" />
				<span class="button"><g:actionSubmit class="edit"
						action="edit"
						value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
				<span class="button"><g:actionSubmit class="delete"
						action="delete"
						value="${message(code: 'default.button.delete.label', default: 'Delete')}"
						onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
			</g:form>
		</div>
	</div>
</body>
</html>
