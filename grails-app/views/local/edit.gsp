

<%@ page import="br.com.synchro.ambinventario.Local" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'local.label', default: 'Local')}" />
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
            <g:hasErrors bean="${localInstance}">
            <div class="errors">
                <g:renderErrors bean="${localInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${localInstance?.id}" />
                <g:hiddenField name="version" value="${localInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="local"><g:message code="local.local.label" default="Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: localInstance, field: 'local', 'errors')}">
                                    <g:textField name="local" maxlength="100" value="${localInstance?.local}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descricaoLocal"><g:message code="local.descricaoLocal.label" default="Descricao Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: localInstance, field: 'descricaoLocal', 'errors')}">
                                    <g:textField name="descricaoLocal" value="${localInstance?.descricaoLocal}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hosts"><g:message code="local.hosts.label" default="Hosts" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: localInstance, field: 'hosts', 'errors')}">
                                    
<ul>
<g:each in="${localInstance?.hosts?}" var="h">
    <li><g:link controller="host" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="host" action="create" params="['local.id': localInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'host.label', default: 'Host')])}</g:link>

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
