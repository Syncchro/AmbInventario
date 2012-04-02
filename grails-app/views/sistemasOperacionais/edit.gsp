

<%@ page import="ambivent.SistemasOperacionais" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais')}" />
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
            <g:hasErrors bean="${sistemasOperacionaisInstance}">
            <div class="errors">
                <g:renderErrors bean="${sistemasOperacionaisInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${sistemasOperacionaisInstance?.id}" />
                <g:hiddenField name="version" value="${sistemasOperacionaisInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="SO"><g:message code="sistemasOperacionais.SO.label" default="SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sistemasOperacionaisInstance, field: 'SO', 'errors')}">
                                    <g:textField name="SO" maxlength="100" value="${sistemasOperacionaisInstance?.SO}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descricaoSO"><g:message code="sistemasOperacionais.descricaoSO.label" default="Descricao SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sistemasOperacionaisInstance, field: 'descricaoSO', 'errors')}">
                                    <g:textField name="descricaoSO" value="${sistemasOperacionaisInstance?.descricaoSO}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objAmbiente"><g:message code="sistemasOperacionais.objAmbiente.label" default="Obj Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sistemasOperacionaisInstance, field: 'objAmbiente', 'errors')}">
                                    
<ul>
<g:each in="${sistemasOperacionaisInstance?.objAmbiente?}" var="o">
    <li><g:link controller="ambientes" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="ambientes" action="create" params="['sistemasOperacionais.id': sistemasOperacionaisInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ambientes.label', default: 'Ambientes')])}</g:link>

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
