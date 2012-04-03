

<%@ page import="br.com.synchro.ambinventario.Software" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'software.label', default: 'Software')}" />
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
            <g:hasErrors bean="${softwareInstance}">
            <div class="errors">
                <g:renderErrors bean="${softwareInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${softwareInstance?.id}" />
                <g:hiddenField name="version" value="${softwareInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="software"><g:message code="software.software.label" default="Software" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: softwareInstance, field: 'software', 'errors')}">
                                    <g:textField name="software" value="${softwareInstance?.software}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descricaoSoftware"><g:message code="software.descricaoSoftware.label" default="Descricao Software" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: softwareInstance, field: 'descricaoSoftware', 'errors')}">
                                    <g:textField name="descricaoSoftware" value="${softwareInstance?.descricaoSoftware}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objInstancia"><g:message code="software.objInstancia.label" default="Obj Instancia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: softwareInstance, field: 'objInstancia', 'errors')}">
                                    
<ul>
<g:each in="${softwareInstance?.objInstancia?}" var="o">
    <li><g:link controller="instancia" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="instancia" action="create" params="['software.id': softwareInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instancia.label', default: 'Instancia')])}</g:link>

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
