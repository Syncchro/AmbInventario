

<%@ page import="br.com.synchro.ambinventario.SO" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'SO.label', default: 'SO')}" />
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
            <g:hasErrors bean="${SOInstance}">
            <div class="errors">
                <g:renderErrors bean="${SOInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="so"><g:message code="SO.so.label" default="So" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: SOInstance, field: 'so', 'errors')}">
                                    <g:textField name="so" maxlength="100" value="${SOInstance?.so}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoSO"><g:message code="SO.descricaoSO.label" default="Descricao SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: SOInstance, field: 'descricaoSO', 'errors')}">
                                    <g:textField name="descricaoSO" value="${SOInstance?.descricaoSO}" />
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
