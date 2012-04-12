

<%@ page import="br.com.synchro.ambinventario.SO" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'SO.label', default: 'SO')}" />
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
            <g:hasErrors bean="${SOInstance}">
            <div class="errors">
                <g:renderErrors bean="${SOInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${SOInstance?.id}" />
                <g:hiddenField name="version" value="${SOInstance?.version}" />
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
                                  <label for="hosts"><g:message code="SO.hosts.label" default="Hosts" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: SOInstance, field: 'hosts', 'errors')}">
                                    
<ul>
<g:each in="${SOInstance?.hosts?}" var="h">
    <li><g:link controller="host" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="host" action="create" params="['SO.id': SOInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'host.label', default: 'Host')])}</g:link>

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
