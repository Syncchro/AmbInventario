
<%@ page import="br.com.synchro.ambinventario.Instancia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancia.label', default: 'Instancia')}" />
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
                            <td valign="top" class="name"><g:message code="instancia.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "nome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.observacao.label" default="Observacao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "observacao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.urlConsole.label" default="Url Console" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "urlConsole")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.ambiente.label" default="Ambiente" /></td>
                            
                            <td valign="top" class="value"><g:link controller="ambiente" action="show" id="${instanciaInstance?.ambiente?.id}">${instanciaInstance?.ambiente?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.ram.label" default="Ram" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "ram")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.solicitante.label" default="Solicitante" /></td>
                            
                            <td valign="top" class="value"><g:link controller="solicitante" action="show" id="${instanciaInstance?.solicitante?.id}">${instanciaInstance?.solicitante?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.host.label" default="Host" /></td>
                            
                            <td valign="top" class="value"><g:link controller="host" action="show" id="${instanciaInstance?.host?.id}">${instanciaInstance?.host?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.software.label" default="Software" /></td>
                            
                            <td valign="top" class="value"><g:link controller="software" action="show" id="${instanciaInstance?.software?.id}">${instanciaInstance?.software?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.dataInicio.label" default="Data Inicio" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${instanciaInstance?.dataInicio}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.dataFim.label" default="Data Fim" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${instanciaInstance?.dataFim}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.periodoDeUso.label" default="Periodo De Uso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "periodoDeUso")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${instanciaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
