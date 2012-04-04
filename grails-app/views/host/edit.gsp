

<%@ page import="br.com.synchro.ambinventario.Host" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'host.label', default: 'Host')}" />
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
            <g:hasErrors bean="${hostInstance}">
            <div class="errors">
                <g:renderErrors bean="${hostInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${hostInstance?.id}" />
                <g:hiddenField name="version" value="${hostInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="host.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" maxlength="50" value="${hostInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ambiente"><g:message code="host.ambiente.label" default="Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'ambiente', 'errors')}">
                                    
<ul>
<g:each in="${hostInstance?.ambiente?}" var="a">
    <li><g:link controller="ambiente" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="ambiente" action="create" params="['host.id': hostInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ambiente.label', default: 'Ambiente')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objLocal"><g:message code="host.objLocal.label" default="Obj Locais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'objLocal', 'errors')}">
                                    <g:select name="objLocal.id" from="${br.com.synchro.ambinventario.Local.list()}" optionKey="id" value="${hostInstance?.objLocal?.id}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="objSO"><g:message code="host.objSO.label" default="Obj Locais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'objSO', 'errors')}">
                                    <g:select name="objSO.id" from="${br.com.synchro.ambinventario.SO.list()}" optionKey="id" value="${hostInstance?.objSO?.id}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="usuarioSO"><g:message code="host.usuarioSO.label" default="Usuário SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'usuarioSO', 'errors')}">
                                    <g:textField name="usuarioSO" maxlength="50" value="${hostInstance?.usuarioSO}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="senhaSO"><g:message code="host.senhaSO.label" default="Senha SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'senhaSO', 'errors')}">
                                    <g:textField name="senhaSO" maxlength="50" value="${hostInstance?.senhaSO}" />
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
