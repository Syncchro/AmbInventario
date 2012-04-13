
<%@ page import="br.com.synchro.ambinventario.Instancia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancia.label', default: 'Instancia')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'instancia.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'instancia.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="observacao" title="${message(code: 'instancia.observacao.label', default: 'Observacao')}" />
                        
                            <g:sortableColumn property="urlConsole" title="${message(code: 'instancia.urlConsole.label', default: 'Url Console')}" />
                        
                            <th><g:message code="instancia.ambiente.label" default="Ambiente" /></th>
                        
                            <g:sortableColumn property="ram" title="${message(code: 'instancia.ram.label', default: 'Ram')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${instanciaInstanceList}" status="i" var="instanciaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${instanciaInstance.id}">${fieldValue(bean: instanciaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "observacao")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "urlConsole")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "ambiente")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "ram")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${instanciaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
