
<%@ page import="br.com.synchro.ambinventario.Instancia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'instancia.label', default: 'Instancia')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                    <h1><g:message code="cadastro.label" args="[entityName]" /></h1>
                    <ul>
                        <li><span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span></li>
                    </ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
        <div class="body">
            <br/><br/>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'instancia.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="instancia" title="${message(code: 'instancia.instancia.label', default: 'Instancia')}" />
                        
                            <th><g:message code="instancia.objAmbiente.label" default="Obj Ambiente" /></th>
                        
                            <th><g:message code="instancia.objSoftware.label" default="Obj Software" /></th>
                        
                            <g:sortableColumn property="espacoUtilizado" title="${message(code: 'instancia.espacoUtilizado.label', default: 'Espaco Utilizado')}" />
                        
                            <g:sortableColumn property="obsInstancia" title="${message(code: 'instancia.obsInstancia.label', default: 'Obs Instancia')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${instanciaInstanceList}" status="i" var="instanciaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${instanciaInstance.id}">${fieldValue(bean: instanciaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "instancia")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "objAmbiente")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "objSoftware")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "espacoUtilizado")}</td>
                        
                            <td>${fieldValue(bean: instanciaInstance, field: "obsInstancia")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${instanciaInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
