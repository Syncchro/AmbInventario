

<%@ page import="ambivent.Locais" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'locais.label', default: 'Locais')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${locaisInstance}">
            <div class="errors">
                <g:renderErrors bean="${locaisInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${locaisInstance?.id}" />
                <g:hiddenField name="version" value="${locaisInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="local"><g:message code="locais.local.label" default="Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locaisInstance, field: 'local', 'errors')}">
                                    <g:textField name="local" maxlength="100" value="${locaisInstance?.local}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descricaoLocal"><g:message code="locais.descricaoLocal.label" default="Descricao Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locaisInstance, field: 'descricaoLocal', 'errors')}">
                                    <g:textField name="descricaoLocal" value="${locaisInstance?.descricaoLocal}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objAmbiente"><g:message code="locais.objAmbiente.label" default="Obj Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locaisInstance, field: 'objAmbiente', 'errors')}">
                                    <g:select name="objAmbiente.id" from="${ambivent.Ambientes.list()}" optionKey="id" value="${locaisInstance?.objAmbiente?.id}"  />
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
    </body>
</html>
