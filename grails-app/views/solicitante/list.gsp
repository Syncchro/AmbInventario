
<%@ page import="br.com.synchro.ambinventario.Solicitante" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solicitante.label', default: 'Solicitante')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'solicitante.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="solicitante" title="${message(code: 'solicitante.solicitante.label', default: 'Solicitante')}" />
                        
                            <g:sortableColumn property="projetoArea" title="${message(code: 'solicitante.projetoArea.label', default: 'Projeto Area')}" />
                        
                            <th><g:message code="solicitante.objSolicitante.label" default="Obj Solicitante" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${solicitanteInstanceList}" status="i" var="solicitanteInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${solicitanteInstance.id}">${fieldValue(bean: solicitanteInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: solicitanteInstance, field: "solicitante")}</td>
                        
                            <td>${fieldValue(bean: solicitanteInstance, field: "projetoArea")}</td>
                        
                            <td>${fieldValue(bean: solicitanteInstance, field: "objSolicitante")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${solicitanteInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
