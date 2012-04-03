

<%@ page import="br.com.synchro.ambinventario.Ambiente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ambiente.label', default: 'Ambiente')}" />
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
            <g:hasErrors bean="${ambienteInstance}">
            <div class="errors">
                <g:renderErrors bean="${ambienteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${ambienteInstance?.id}" />
                <g:hiddenField name="version" value="${ambienteInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ambiente"><g:message code="ambiente.ambiente.label" default="Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'ambiente', 'errors')}">
                                    <g:textField name="ambiente" maxlength="50" value="${ambienteInstance?.ambiente}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="urlConsole"><g:message code="ambiente.urlConsole.label" default="Url Console" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'urlConsole', 'errors')}">
                                    <g:textField name="urlConsole" maxlength="50" value="${ambienteInstance?.urlConsole}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="instrucaoAdicionais"><g:message code="ambiente.instrucaoAdicionais.label" default="Instrucao Adicionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'instrucaoAdicionais', 'errors')}">
                                    <g:textField name="instrucaoAdicionais" maxlength="150" value="${ambienteInstance?.instrucaoAdicionais}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fisicaVirtual"><g:message code="ambiente.fisicaVirtual.label" default="Fisica Virtual" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'fisicaVirtual', 'errors')}">
                                    <g:select name="fisicaVirtual" from="${br.com.synchro.ambinventario.TipoAmbiente?.values()}" keys="${br.com.synchro.ambinventario.TipoAmbiente?.values()*.name()}" value="${ambienteInstance?.fisicaVirtual?.name()}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descricaoAmbiente"><g:message code="ambiente.descricaoAmbiente.label" default="Descricao Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'descricaoAmbiente', 'errors')}">
                                    <g:textField name="descricaoAmbiente" value="${ambienteInstance?.descricaoAmbiente}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="instancias"><g:message code="ambiente.instancias.label" default="Instancias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'instancias', 'errors')}">
                                    
<ul>
<g:each in="${ambienteInstance?.instancias?}" var="i">
    <li><g:link controller="instancia" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="instancia" action="create" params="['ambiente.id': ambienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instancia.label', default: 'Instancia')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="memoriaTotal"><g:message code="ambiente.memoriaTotal.label" default="Memoria Total" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'memoriaTotal', 'errors')}">
                                    <g:textField name="memoriaTotal" value="${fieldValue(bean: ambienteInstance, field: 'memoriaTotal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objHost"><g:message code="ambiente.objHost.label" default="Obj Host" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'objHost', 'errors')}">
                                    <g:select name="objHost.id" from="${br.com.synchro.ambinventario.Host.list()}" optionKey="id" value="${ambienteInstance?.objHost?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="obsAmbiente"><g:message code="ambiente.obsAmbiente.label" default="Obs Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'obsAmbiente', 'errors')}">
                                    <g:textField name="obsAmbiente" value="${ambienteInstance?.obsAmbiente}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="senhaConsole"><g:message code="ambiente.senhaConsole.label" default="Senha Console" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'senhaConsole', 'errors')}">
                                    <g:textField name="senhaConsole" value="${fieldValue(bean: ambienteInstance, field: 'senhaConsole')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="usuarioConsole"><g:message code="ambiente.usuarioConsole.label" default="Usuario Console" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ambienteInstance, field: 'usuarioConsole', 'errors')}">
                                    <g:textField name="usuarioConsole" value="${ambienteInstance?.usuarioConsole}" />
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
