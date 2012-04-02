
<%@ page import="ambivent.Instancias" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancias.label', default: 'Instancias')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'instancias.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="instancia" title="${message(code: 'instancias.instancia.label', default: 'Instancia')}" />
                        
                            <th><g:message code="instancias.objAmbiente.label" default="Obj Ambiente" /></th>
                        
                            <th><g:message code="instancias.objSoftware.label" default="Obj Software" /></th>
                        
                            <g:sortableColumn property="espacoUtilizado" title="${message(code: 'instancias.espacoUtilizado.label', default: 'Espaco Utilizado')}" />
                        
                            <g:sortableColumn property="obsInstancia" title="${message(code: 'instancias.obsInstancia.label', default: 'Obs Instancia')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${instanciasInstanceList}" status="i" var="instanciasInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${instanciasInstance.id}">${fieldValue(bean: instanciasInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: instanciasInstance, field: "instancia")}</td>
                        
                            <td>${fieldValue(bean: instanciasInstance, field: "objAmbiente")}</td>
                        
                            <td>${fieldValue(bean: instanciasInstance, field: "objSoftware")}</td>
                        
                            <td>${fieldValue(bean: instanciasInstance, field: "espacoUtilizado")}</td>
                        
                            <td>${fieldValue(bean: instanciasInstance, field: "obsInstancia")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${instanciasInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
