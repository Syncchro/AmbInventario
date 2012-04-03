
<%@ page import="br.com.synchro.ambinventario.Instancia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancia.label', default: 'Instancia')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                    <h1><g:message code="cadastro.label" args="[entityName]" /></h1>
                    <ul>
                        <li><span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span></li>
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
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.instancia.label" default="Instancia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "instancia")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.objAmbiente.label" default="Obj Ambiente" /></td>
                            
                            <td valign="top" class="value"><g:link controller="ambiente" action="show" id="${instanciaInstance?.objAmbiente?.id}">${instanciaInstance?.objAmbiente?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.objSoftware.label" default="Obj Software" /></td>
                            
                            <td valign="top" class="value"><g:link controller="software" action="show" id="${instanciaInstance?.objSoftware?.id}">${instanciaInstance?.objSoftware?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.objSolicitante.label" default="Obj Solicitante" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${instanciaInstance.objSolicitante}" var="o">
                                    <li><g:link controller="solicitante" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.espacoUtilizado.label" default="Espaco Utilizado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "espacoUtilizado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="instancia.obsInstancia.label" default="Obs Instancia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: instanciaInstance, field: "obsInstancia")}</td>
                            
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
        </div>
    </body>
</html>
