
<%@ page import="br.com.synchro.ambinventario.SO" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'SO.label', default: 'SO')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'SO.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="so" title="${message(code: 'SO.so.label', default: 'So')}" />
                        
                            <g:sortableColumn property="descricaoSO" title="${message(code: 'SO.descricaoSO.label', default: 'Descricao SO')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${SOInstanceList}" status="i" var="SOInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${SOInstance.id}">${fieldValue(bean: SOInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: SOInstance, field: "so")}</td>
                        
                            <td>${fieldValue(bean: SOInstance, field: "descricaoSO")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${SOInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
