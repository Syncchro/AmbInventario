
<%@ page import="ambivent.Ambientes" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ambientes.label', default: 'Ambientes')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'ambientes.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="ambiente" title="${message(code: 'ambientes.ambiente.label', default: 'Ambiente')}" />
                        
                            <g:sortableColumn property="fisicaVirtual" title="${message(code: 'ambientes.fisicaVirtual.label', default: 'Fisica Virtual')}" />
                        
                            <th><g:message code="ambientes.objLocal.label" default="Obj Local" /></th>
                        
                            <th><g:message code="ambientes.objSO.label" default="Obj SO" /></th>
                        
                            <g:sortableColumn property="descricaoAmbiente" title="${message(code: 'ambientes.descricaoAmbiente.label', default: 'Descricao Ambiente')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${ambientesInstanceList}" status="i" var="ambientesInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${ambientesInstance.id}">${fieldValue(bean: ambientesInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: ambientesInstance, field: "ambiente")}</td>
                        
                            <td>${fieldValue(bean: ambientesInstance, field: "fisicaVirtual")}</td>
                        
                            <td>${fieldValue(bean: ambientesInstance, field: "objLocal")}</td>
                        
                            <td>${fieldValue(bean: ambientesInstance, field: "objSO")}</td>
                        
                            <td>${fieldValue(bean: ambientesInstance, field: "descricaoAmbiente")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${ambientesInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
