
<%@ page import="br.com.synchro.ambinventario.Ambiente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ambiente.label', default: 'Ambiente')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'ambiente.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="ambiente" title="${message(code: 'ambiente.ambiente.label', default: 'Ambiente')}" />
                        
                            <g:sortableColumn property="urlConsole" title="${message(code: 'ambiente.urlConsole.label', default: 'Url Console')}" />
                        
                            <g:sortableColumn property="instrucaoAdicionais" title="${message(code: 'ambiente.instrucaoAdicionais.label', default: 'Instrucao Adicionais')}" />
                        
                            <g:sortableColumn property="fisicaVirtual" title="${message(code: 'ambiente.fisicaVirtual.label', default: 'Fisica Virtual')}" />
                        
                            <g:sortableColumn property="descricaoAmbiente" title="${message(code: 'ambiente.descricaoAmbiente.label', default: 'Descricao Ambiente')}" />
                            
                            <g:sortableColumn property="memoriaRestante" title="${message(code: 'ambiente.memoriaRestante.label', default: 'Memória Restante (KB)')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${ambienteInstanceList}" status="i" var="ambienteInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${ambienteInstance.id}">${fieldValue(bean: ambienteInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: ambienteInstance, field: "ambiente")}</td>
                        
                            <td>${fieldValue(bean: ambienteInstance, field: "urlConsole")}</td>
                        
                            <td>${fieldValue(bean: ambienteInstance, field: "instrucaoAdicionais")}</td>
                        
                            <td>${fieldValue(bean: ambienteInstance, field: "fisicaVirtual")}</td>
                        
                            <td>${fieldValue(bean: ambienteInstance, field: "descricaoAmbiente")}</td>
                            
                            <td class="${ambienteInstance?.memoriaRestante >= new Integer(message(code: 'conf.ambiente.memoriaminima'))?'memoriaOk':'memoriaNOk'}">${fieldValue(bean: ambienteInstance, field: "memoriaRestante")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${ambienteInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
