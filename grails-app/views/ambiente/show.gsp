
<%@ page import="br.com.synchro.ambinventario.Ambiente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ambiente.label', default: 'Ambiente')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.ambiente.label" default="Ambiente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "ambiente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.urlConsole.label" default="Url Console" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "urlConsole")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.instrucaoAdicionais.label" default="Instrucao Adicionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "instrucaoAdicionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.fisicaVirtual.label" default="Fisica Virtual" /></td>
                            
                            <td valign="top" class="value">${ambienteInstance?.fisicaVirtual?.encodeAsHTML()}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.descricaoAmbiente.label" default="Descricao Ambiente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "descricaoAmbiente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.instancias.label" default="Instancias" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${ambienteInstance.instancias}" var="i">
                                    <li><g:link controller="instancia" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.memoriaTotal.label" default="Memoria Total" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "memoriaTotal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.objHost.label" default="Obj Host" /></td>
                            
                            <td valign="top" class="value"><g:link controller="host" action="show" id="${ambienteInstance?.objHost?.id}">${ambienteInstance?.objHost?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.obsAmbiente.label" default="Obs Ambiente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "obsAmbiente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.senhaConsole.label" default="Senha Console" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "senhaConsole")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ambiente.usuarioConsole.label" default="Usuario Console" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ambienteInstance, field: "usuarioConsole")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${ambienteInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
