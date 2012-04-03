
<%@ page import="br.com.synchro.ambinventario.Software" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'software.label', default: 'Software')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'software.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="software" title="${message(code: 'software.software.label', default: 'Software')}" />
                        
                            <g:sortableColumn property="descricaoSoftware" title="${message(code: 'software.descricaoSoftware.label', default: 'Descricao Software')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${softwareInstanceList}" status="i" var="softwareInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${softwareInstance.id}">${fieldValue(bean: softwareInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: softwareInstance, field: "software")}</td>
                        
                            <td>${fieldValue(bean: softwareInstance, field: "descricaoSoftware")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${softwareInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
