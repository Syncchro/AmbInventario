
<%@ page import="br.com.synchro.ambinventario.Host" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'host.label', default: 'Host')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'host.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'host.nome.label', default: 'Nome')}" />
                        
                            <th><g:message code="host.objLocal.label" default="Local" /></th>
                            
                            <th><g:message code="host.objSO.label" default="S.O." /></th>
                            
                            <th><g:message code="host.usuarioSO.label" default="Usuário S.O." /></th>
                            
                            <th><g:message code="host.senhaSO.label" default="Senha S.O." /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${hostInstanceList}" status="i" var="hostInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${hostInstance.id}">${fieldValue(bean: hostInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: hostInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: hostInstance, field: "objLocal")}</td>
                            
                            <td>${fieldValue(bean: hostInstance, field: "objSO")}</td>
                            
                            <td>${fieldValue(bean: hostInstance, field: "usuarioSO")}</td>
                            
                            <td>${fieldValue(bean: hostInstance, field: "senhaSO")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${hostInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
