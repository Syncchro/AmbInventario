
<%@ page import="ambivent.Instancias" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancias.label', default: 'Instancias')}" />
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
                            <td valign="top" class="name"><g:message code="instancias.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciasInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancias.instancia.label" default="Instancia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciasInstance, field: "instancia")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancias.objAmbiente.label" default="Obj Ambiente" /></td>
                            
                            <td valign="top" class="value"><g:link controller="ambientes" action="show" id="${instanciasInstance?.objAmbiente?.id}">${instanciasInstance?.objAmbiente?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancias.objSoftware.label" default="Obj Software" /></td>
                            
                            <td valign="top" class="value"><g:link controller="softwares" action="show" id="${instanciasInstance?.objSoftware?.id}">${instanciasInstance?.objSoftware?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancias.espacoUtilizado.label" default="Espaco Utilizado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciasInstance, field: "espacoUtilizado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancias.obsInstancia.label" default="Obs Instancia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciasInstance, field: "obsInstancia")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancias.solicitante.label" default="Solicitante" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciasInstance, field: "solicitante")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${instanciasInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
