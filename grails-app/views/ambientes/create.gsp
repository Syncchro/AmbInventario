

<%@ page import="ambivent.Ambientes" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ambientes.label', default: 'Ambientes')}" />
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
            <g:hasErrors bean="${ambientesInstance}">
            <div class="errors">
                <g:renderErrors bean="${ambientesInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ambiente"><g:message code="ambientes.ambiente.label" default="Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'ambiente', 'errors')}">
                                    <g:textField name="ambiente" maxlength="50" value="${ambientesInstance?.ambiente}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fisicaVirtual"><g:message code="ambientes.fisicaVirtual.label" default="Fisica Virtual" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'fisicaVirtual', 'errors')}">
                                    <g:select name="fisicaVirtual" from="${ambivent.TipoAmbiente?.values()}" keys="${ambivent.TipoAmbiente?.values()*.name()}" value="${ambientesInstance?.fisicaVirtual?.name()}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="objLocal"><g:message code="ambientes.objLocal.label" default="Obj Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'objLocal', 'errors')}">
                                    <g:select name="objLocal.id" from="${ambivent.Locais.list()}" optionKey="id" value="${ambientesInstance?.objLocal?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="objSO"><g:message code="ambientes.objSO.label" default="Obj SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'objSO', 'errors')}">
                                    <g:select name="objSO.id" from="${ambivent.SistemasOperacionais.list()}" optionKey="id" value="${ambientesInstance?.objSO?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoAmbiente"><g:message code="ambientes.descricaoAmbiente.label" default="Descricao Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'descricaoAmbiente', 'errors')}">
                                    <g:textField name="descricaoAmbiente" value="${ambientesInstance?.descricaoAmbiente}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="memoriaTotal"><g:message code="ambientes.memoriaTotal.label" default="Memoria Total" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'memoriaTotal', 'errors')}">
                                    <g:textField name="memoriaTotal" value="${fieldValue(bean: ambientesInstance, field: 'memoriaTotal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="obsAmbiente"><g:message code="ambientes.obsAmbiente.label" default="Obs Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambientesInstance, field: 'obsAmbiente', 'errors')}">
                                    <g:textField name="obsAmbiente" value="${ambientesInstance?.obsAmbiente}" />
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
