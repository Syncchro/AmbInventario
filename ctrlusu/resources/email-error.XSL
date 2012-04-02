<?xml version="1.0" encoding ="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="error-synchro">
<html>
  <head>
  </head> 
  <body style=" font-family: Lucida Sans Unicode , Arial, Helvetica, sans-serif;
    			background-color: #FFFFFF;
			    margin: 2px;
    			padding: 0px;
   				font-size: 11px;  ">
 	<span style="color: #005CA2;">
    	<b>Synchro Solução Fiscal Brasil</b>
    </span>   				
    <br/>
    <br/>
	<table width="100%" 
    			style=" font-family: Lucida Sans Unicode , Arial, Helvetica, sans-serif;
    			padding: 0px;
   				font-size: 11px;" >
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Mensagem do Erro:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="msg-error"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Tipo do Erro:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="tipo-error"/></td>
    	</tr>
	</table>
    <br/>
    <br/>
    <span style="color: #005CA2;">
    	<b>Informações do Sistema e Usuário:</b>
    </span>
 	<table width="100%" style="  border-top: 1px solid #005CA2;
    							  border-left: 1px solid #005CA2;
								  border-bottom: 1px solid #005CA2;
								  background-color: #EEEEEE;
								  font-family: Lucida Sans Unicode , Arial, Helvetica, sans-serif;
    							  padding: 0px;
   								  font-size: 11px;" >
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Caminho Aplicação:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="caminho-aplicacao"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Nome do Usuário:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="nome-usuario"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Organização:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="organizacao"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Data Hora:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="data-hora"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Sistema e Versão:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="sistema-versao"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Ambiente:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="ambiente"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap; vertical-align: top;"><b>Observação:</b></td>
    		<td width="85%" style="text-align: left; vertical-align: top;"><xsl:value-of select="observacao"/></td>
    	</tr>
	</table>
	<br/>
    <br/>
	<span style="color: #005CA2;">
    	<b>Detalhe do Erro:</b>
    </span>
 	<table width="100%" style="  border-top: 1px solid #005CA2;
    							  border-left: 1px solid #005CA2;
								  border-bottom: 1px solid #005CA2;
								  background-color: #EEEEEE;
								  font-family: Lucida Sans Unicode , Arial, Helvetica, sans-serif;
    							  padding: 0px;
   								  font-size: 11px;" >
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Exception:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="exception-error"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Status:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="status-error"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Request URI:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="request-error"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap;"><b>Servlet Name:</b></td>
    		<td width="85%" style="text-align: left"><xsl:value-of select="servlet-error"/></td>
    	</tr>
    	<tr>
    		<td width="10%" style="text-align: right; white-space: nowrap; vertical-align: top;"><b>Stack Trace:</b></td>
    		<td width="85%" style="text-align: left; vertical-align: top;"><xsl:value-of select="stacktrace-error"/></td>
    	</tr>
	</table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
