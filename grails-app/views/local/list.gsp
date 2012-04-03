
<%@ page import="br.com.synchro.ambinventario.Local" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'local.label', default: 'Local')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'local.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="local" title="${message(code: 'local.local.label', default: 'Local')}" />
                        
                            <g:sortableColumn property="descricaoLocal" title="${message(code: 'local.descricaoLocal.label', default: 'Descricao Local')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${localInstanceList}" status="i" var="localInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${localInstance.id}">${fieldValue(bean: localInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: localInstance, field: "local")}</td>
                        
                            <td>${fieldValue(bean: localInstance, field: "descricaoLocal")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${localInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
