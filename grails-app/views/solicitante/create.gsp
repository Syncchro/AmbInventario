

<%@ page import="br.com.synchro.ambinventario.Solicitante" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solicitante.label', default: 'Solicitante')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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

                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
        </div>
    </body>
</html>