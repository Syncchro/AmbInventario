

<%@ page import="ambivent.SistemasOperacionais" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${sistemasOperacionaisInstance}">
            <div class="errors">
                <g:renderErrors bean="${sistemasOperacionaisInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
