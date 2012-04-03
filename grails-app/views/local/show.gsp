
<%@ page import="br.com.synchro.ambinventario.Local" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'local.label', default: 'Local')}" />
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
                            <td valign="top" class="name"><g:message code="local.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: localInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="local.local.label" default="Local" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: localInstance, field: "local")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="local.descricaoLocal.label" default="Descricao Local" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: localInstance, field: "descricaoLocal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="local.hosts.label" default="Hosts" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${localInstance.hosts}" var="h">
                                    <li><g:link controller="host" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${localInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
        </div>
    </body>
</html>
