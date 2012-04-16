
<%@ page import="br.com.synchro.ambinventario.Host" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'host.label', default: 'Host')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hostInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hostInstance, field: "nome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.local.label" default="Local" /></td>
                            
                            <td valign="top" class="value"><g:link controller="local" action="show" id="${hostInstance?.local?.id}">${hostInstance?.local?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.so.label" default="So" /></td>
                            
                            <td valign="top" class="value"><g:link controller="SO" action="show" id="${hostInstance?.so?.id}">${hostInstance?.so?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.usuarioSO.label" default="Usuario SO" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hostInstance, field: "usuarioSO")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.senhaSO.label" default="Senha SO" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hostInstance, field: "senhaSO")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.ram.label" default="Ram" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hostInstance, field: "ram")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.disco.label" default="Disco" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hostInstance, field: "disco")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.fisico.label" default="Fisico" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${hostInstance?.fisico}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.ambientes.label" default="Ambientes" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${hostInstance.ambientes}" var="a">
                                    <li><g:link controller="ambiente" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.memoriaRestante.label" default="Memoria Restante" /></td>
                            
                            <td valign="top" class="value criticidadeMemoria${hostInstance.criticidadeMemoria(message(code: 'conf.ambiente.ram.nivel'))}">${hostInstance.memoriaRestante()}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="host.softwares.label" default="Softwares" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${hostInstance.softwareList()}" var="s">
                                    <li><g:link controller="software" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${hostInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
