
<%@ page import="ambivent.Locais" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'locais.label', default: 'Locais')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'locais.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="local" title="${message(code: 'locais.local.label', default: 'Local')}" />
                        
                            <g:sortableColumn property="descricaoLocal" title="${message(code: 'locais.descricaoLocal.label', default: 'Descricao Local')}" />
                        
                            <th><g:message code="locais.objAmbiente.label" default="Obj Ambiente" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${locaisInstanceList}" status="i" var="locaisInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${locaisInstance.id}">${fieldValue(bean: locaisInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: locaisInstance, field: "local")}</td>
                        
                            <td>${fieldValue(bean: locaisInstance, field: "descricaoLocal")}</td>
                        
                            <td>${fieldValue(bean: locaisInstance, field: "objAmbiente")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${locaisInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
