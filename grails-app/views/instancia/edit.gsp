

<%@ page import="br.com.synchro.ambinventario.Instancia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancia.label', default: 'Instancia')}" />
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
            <g:hasErrors bean="${instanciaInstance}">
            <div class="errors">
                <g:renderErrors bean="${instanciaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${instanciaInstance?.id}" />
                <g:hiddenField name="version" value="${instanciaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="instancia.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${instanciaInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="observacao"><g:message code="instancia.observacao.label" default="Observacao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'observacao', 'errors')}">
                                    <g:textField name="observacao" value="${instanciaInstance?.observacao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="urlConsole"><g:message code="instancia.urlConsole.label" default="Url Console" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'urlConsole', 'errors')}">
                                    <g:textField name="urlConsole" value="${instanciaInstance?.urlConsole}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ambiente"><g:message code="instancia.ambiente.label" default="Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'ambiente', 'errors')}">
                                    <g:select name="ambiente.id" from="${br.com.synchro.ambinventario.Ambiente.list()}" optionKey="id" value="${instanciaInstance?.ambiente?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ram"><g:message code="instancia.ram.label" default="Ram" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'ram', 'errors')}">
                                    <g:textField name="ram" value="${fieldValue(bean: instanciaInstance, field: 'ram')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="solicitante"><g:message code="instancia.solicitante.label" default="Solicitante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'solicitante', 'errors')}">
                                    <g:select name="solicitante.id" from="${br.com.synchro.ambinventario.Solicitante.list()}" optionKey="id" value="${instanciaInstance?.solicitante?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="host"><g:message code="instancia.host.label" default="Host" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'host', 'errors')}">
                                    <g:select name="host.id" from="${br.com.synchro.ambinventario.Host.list()}" optionKey="id" value="${instanciaInstance?.host?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="software"><g:message code="instancia.software.label" default="Software" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'software', 'errors')}">
                                    <g:select name="software.id" from="${br.com.synchro.ambinventario.Software.list()}" optionKey="id" value="${instanciaInstance?.software?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dataInicio"><g:message code="instancia.dataInicio.label" default="Data Inicio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'dataInicio', 'errors')}">
                                    <calendar:datePicker name="dataInicio" defaultValue="${instanciaInstance?.dataInicio}"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dataFim"><g:message code="instancia.dataFim.label" default="Data Fim" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'dataFim', 'errors')}">
                                     <calendar:datePicker name="dataFim" defaultValue="${instanciaInstance?.dataFim}"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="periodoDeUso"><g:message code="instancia.periodoDeUso.label" default="Periodo De Uso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciaInstance, field: 'periodoDeUso', 'errors')}">
                                    <g:textField name="periodoDeUso" value="${instanciaInstance?.periodoDeUso}" />
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
