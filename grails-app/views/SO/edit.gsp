

<%@ page import="br.com.synchro.ambinventario.SO" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'SO.label', default: 'SO')}" />
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
                                  <label for="ambientes"><g:message code="SO.ambientes.label" default="Ambientes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: SOInstance, field: 'ambientes', 'errors')}">
                                    <g:select name="ambientes" from="${br.com.synchro.ambinventario.Ambiente.list()}" multiple="yes" optionKey="id" size="5" value="${SOInstance?.ambientes*.id}" />
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
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
        </div>
    </body>
</html>
