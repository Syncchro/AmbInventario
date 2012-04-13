

<%@ page import="br.com.synchro.ambinventario.Host"%>
<html>
<<<<<<< HEAD
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'host.label', default: 'Host')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${hostInstance}">
            <div class="errors">
                <g:renderErrors bean="${hostInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${hostInstance?.id}" />
                <g:hiddenField name="version" value="${hostInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="host.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" maxlength="50" value="${hostInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="local"><g:message code="host.local.label" default="Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'local', 'errors')}">
                                    <g:select name="local.id" from="${br.com.synchro.ambinventario.Local.list()}" optionKey="id" value="${hostInstance?.local?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="so"><g:message code="host.so.label" default="So" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'so', 'errors')}">
                                    <g:select name="so.id" from="${br.com.synchro.ambinventario.SO.list()}" optionKey="id" value="${hostInstance?.so?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="usuarioSO"><g:message code="host.usuarioSO.label" default="Usuario SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'usuarioSO', 'errors')}">
                                    <g:textField name="usuarioSO" value="${hostInstance?.usuarioSO}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="senhaSO"><g:message code="host.senhaSO.label" default="Senha SO" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'senhaSO', 'errors')}">
                                    <g:textField name="senhaSO" value="${hostInstance?.senhaSO}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ram"><g:message code="host.ram.label" default="Ram" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'ram', 'errors')}">
                                    <g:textField name="ram" value="${fieldValue(bean: hostInstance, field: 'ram')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="disco"><g:message code="host.disco.label" default="Disco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'disco', 'errors')}">
                                    <g:textField name="disco" value="${fieldValue(bean: hostInstance, field: 'disco')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fisico"><g:message code="host.fisico.label" default="Fisico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'fisico', 'errors')}">
                                    <g:checkBox name="fisico" value="${hostInstance?.fisico}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ambientes"><g:message code="host.ambientes.label" default="Ambientes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'ambientes', 'errors')}">
                                    
<ul>
<g:each in="${hostInstance?.ambientes?}" var="a">
    <li><g:link controller="ambiente" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="ambiente" action="create" params="['host.id': hostInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ambiente.label', default: 'Ambiente')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="softwares"><g:message code="host.softwares.label" default="Softwares" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hostInstance, field: 'softwares', 'errors')}">
                                    <g:select name="softwares" from="${br.com.synchro.ambinventario.Software.list()}" multiple="yes" optionKey="id" size="5" value="${hostInstance?.softwares*.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
        <script type="text/javascript">
	        $(function(){
		       $('#lcl').change(function(){
			   desabilitaLocal();	  
		       });
				
				function desabilitaLocal(){
					var selected = !$('#lcl option:selected').val() == 'null' || $('#lcl option:selected').val() > 0;
					if(!selected)
						$('#fisico').removeAttr('disabled');
					else
						$('#fisico').attr('disabled','disabled');
						$('#fisico').attr('checked',false);
				}
			});
			    	$('#fisico').change(function() {
			    		desabilitaLocal();
			    	});
		
			    	function desabilitaLocal() {
			    		
			    		var disabled = $('#lcl').attr('disabled');
			    		if (disabled)
			    			$('#lcl').removeAttr('disabled');
			    		else 
			    			$('#lcl').attr('disabled', 'disabled');
			    		    			
			}
		    </script>
    </body>
</html>