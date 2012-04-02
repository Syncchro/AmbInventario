
<%@ page import="ambivent.SistemasOperacionais" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'sistemasOperacionais.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="SO" title="${message(code: 'sistemasOperacionais.SO.label', default: 'SO')}" />
                        
                            <g:sortableColumn property="descricaoSO" title="${message(code: 'sistemasOperacionais.descricaoSO.label', default: 'Descricao SO')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${sistemasOperacionaisInstanceList}" status="i" var="sistemasOperacionaisInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${sistemasOperacionaisInstance.id}">${fieldValue(bean: sistemasOperacionaisInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: sistemasOperacionaisInstance, field: "SO")}</td>
                        
                            <td>${fieldValue(bean: sistemasOperacionaisInstance, field: "descricaoSO")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${sistemasOperacionaisInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
