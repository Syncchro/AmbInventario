
<%@ page import="br.com.synchro.ambinventario.SO" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'SO.label', default: 'SO')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'SO.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="so" title="${message(code: 'SO.so.label', default: 'So')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${SOInstanceList}" status="i" var="SOInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${SOInstance.id}">${fieldValue(bean: SOInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: SOInstance, field: "so")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${SOInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
