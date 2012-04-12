

<%@ page import="br.com.synchro.ambinventario.Solicitante" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solicitante.label', default: 'Solicitante')}" />
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
            <g:hasErrors bean="${solicitanteInstance}">
            <div class="errors">
                <g:renderErrors bean="${solicitanteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="solicitante"><g:message code="solicitante.solicitante.label" default="Solicitante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitanteInstance, field: 'solicitante', 'errors')}">
                                    <g:textField name="solicitante" maxlength="50" value="${solicitanteInstance?.solicitante}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="projetoArea"><g:message code="solicitante.projetoArea.label" default="Projeto Area" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitanteInstance, field: 'projetoArea', 'errors')}">
                                    <g:textField name="projetoArea" maxlength="30" value="${solicitanteInstance?.projetoArea}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="solicitante.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitanteInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" maxlength="70" value="${solicitanteInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="telefone"><g:message code="solicitante.telefone.label" default="Telefone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitanteInstance, field: 'telefone', 'errors')}">
                                    <g:textField name="telefone" maxlength="30" value="${solicitanteInstance?.telefone}" />
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
