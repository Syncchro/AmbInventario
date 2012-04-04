

<%@ page import="br.com.synchro.ambinventario.Instancia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancia.label', default: 'Instancia')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                    <h1><g:message code="cadastro.label" args="[entityName]" /></h1>
                    <ul>
                        <li><span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span></li>
                    </ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
        <div class="body">
            <br/><br/>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${instanciaInstance}">
            <div class="errors">
                <g:renderErrors bean="${instanciaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${instanciaInstance?.id}" />
                <g:hiddenField name="version" value="${instanciaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="instancia"><g:message code="instancia.instancia.label" default="Instancia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'instancia', 'errors')}">
                                    <g:textField name="instancia" value="${instanciaInstance?.instancia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objAmbiente"><g:message code="instancia.objAmbiente.label" default="Obj Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'objAmbiente', 'errors')}">
                                    <g:select name="objAmbiente.id" from="${br.com.synchro.ambinventario.Ambiente.list()}" optionKey="id" value="${instanciaInstance?.objAmbiente?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objSoftware"><g:message code="instancia.objSoftware.label" default="Obj Software" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'objSoftware', 'errors')}">
                                    <g:select name="objSoftware.id" from="${br.com.synchro.ambinventario.Software.list()}" optionKey="id" value="${instanciaInstance?.objSoftware?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="espacoUtilizado"><g:message code="instancia.espacoUtilizado.label" default="Espaco Utilizado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'espacoUtilizado', 'errors')}">
                                    <g:textField name="espacoUtilizado" value="${fieldValue(bean: instanciaInstance, field: 'espacoUtilizado')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="obsInstancia"><g:message code="instancia.obsInstancia.label" default="Obs Instancia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'obsInstancia', 'errors')}">
                                    <g:textField name="obsInstancia" value="${instanciaInstance?.obsInstancia}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objSolicitante"><g:message code="instancia.objSolicitante.label" default="Obj Solicitante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'objSolicitante', 'errors')}">
                                    <g:select name="objSolicitante.id" from="${br.com.synchro.ambinventario.Solicitante.list()}" optionKey="id" value="${instanciaInstance?.objSolicitante?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
        </div>
    </body>
</html>
