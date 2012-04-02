

<%@ page import="ambivent.Instancias" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancias.label', default: 'Instancias')}" />
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
            <g:hasErrors bean="${instanciasInstance}">
            <div class="errors">
                <g:renderErrors bean="${instanciasInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="instancia"><g:message code="instancias.instancia.label" default="Instancia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciasInstance, field: 'instancia', 'errors')}">
                                    <g:textField name="instancia" value="${instanciasInstance?.instancia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="objAmbiente"><g:message code="instancias.objAmbiente.label" default="Obj Ambiente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciasInstance, field: 'objAmbiente', 'errors')}">
                                    <g:select name="objAmbiente.id" from="${ambivent.Ambientes.list()}" optionKey="id" value="${instanciasInstance?.objAmbiente?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="objSoftware"><g:message code="instancias.objSoftware.label" default="Obj Software" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciasInstance, field: 'objSoftware', 'errors')}">
                                    <g:select name="objSoftware.id" from="${ambivent.Softwares.list()}" optionKey="id" value="${instanciasInstance?.objSoftware?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="espacoUtilizado"><g:message code="instancias.espacoUtilizado.label" default="Espaco Utilizado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciasInstance, field: 'espacoUtilizado', 'errors')}">
                                    <g:textField name="espacoUtilizado" value="${fieldValue(bean: instanciasInstance, field: 'espacoUtilizado')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="obsInstancia"><g:message code="instancias.obsInstancia.label" default="Obs Instancia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciasInstance, field: 'obsInstancia', 'errors')}">
                                    <g:textField name="obsInstancia" value="${instanciasInstance?.obsInstancia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="solicitante"><g:message code="instancias.solicitante.label" default="Solicitante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: instanciasInstance, field: 'solicitante', 'errors')}">
                                    <g:textField name="solicitante" value="${instanciasInstance?.solicitante}" />
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
