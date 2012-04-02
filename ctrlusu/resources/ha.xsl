<?xml version="1.0" encoding ="ISO-8859-1" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//PT" encoding="iso-8859-1" indent="yes"/>
  <xsl:template match="/">
  	
  	<HTML id="document:html" lang="pt">
      <HEAD>
      	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
      	<style type="text/css">
			
			.fonteTitulo{
				font-family: Lucida Sans Unicode , Arial, Helvetica, sans-serif;
				font-size: 13px;
				font-weight: bold;
				height: 20px;
				background-color: #EEE;
				padding: 2px 0px 0px 5px;
			}
			
			.fontePadrao{
				font-family: Lucida Sans Unicode , Arial, Helvetica, sans-serif;
				font-size: 11px;
			}
			
			.borda{
				border: 1px solid #BBB;
			}
			
			.fundoPrimario{
				background-color: #DDD;
			}
			
			.fundoSecundario{
				background-color: #EEE;
			}

			.detalhe{ 
				width: 95%; 
				text-align: right;
			}
			
			.ponteiro{
				cursor:pointer;
			}
			
			.scroll{
				position: absolute;
				height: 440px;
				top: 60px;
				width: 100%;
				overflow-y: scroll;
			}
			
			body {
				overflow:hidden;
				padding:0px;
				margin:0px;
			}
			
		</style>
		
		<script language="javaScript">
			function hideShowDetalhe(obj){
      		var objetos = obj.parentNode.parentNode;
       		  if (objetos.getElementsByTagName('div')[0].style.display == 'none'){
        			objetos.getElementsByTagName('div')[0].style.display = '';
        			objetos.getElementsByTagName('img')[0].src= "../ha/images/edit_remove.png"; 
        	  }else{
        			objetos.getElementsByTagName('div')[0].style.display = 'none';
        			objetos.getElementsByTagName('img')[0].src= "../ha/images/edit_add.png";
        		}
        	}
        	
        	function redimenciona(){
        		if (window.innerHeight) {
  			        altura = window.innerHeight;
  			    } else if (window.document.body.clientHeight) {
  			        altura = window.document.body.clientHeight;
  			    } else {
  			        altura = Math.floor(document.body.offsetHeight);
  			    }
        		//window.alert("altura: "+altura);
        		document.getElementById('scroll').style.height = (altura - 60) + "px";
        		//window.alert("elemento: "+document.getElementById('scroll').style.height);
        	}
        	
        </script>
		
		
	
		<!-- Adiciona o FavIcon (ícone da URL e Favoritos). Adiciono duas  referências pq IE e Firefox entendem
		de forma diferente.-->
		<link type="image/x-icon" href="../images/favicon.ico" rel="icon"/> 
		<link type="image/x-icon" href="../images/favicon.ico" rel="shortcut icon" />
		
		<!-- Estilo default da Aplicação -->
		<link type="text/css" rel="stylesheet" href="../gui/css/styleDefault.css"/>
			
      </HEAD>
      <BODY onload="window.focus();" onresize="redimenciona();">
      
    <!-- Header -->
    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="icePnlBrdrNorth">
      	<tbody>
      		<tr>
      			<td class="headerImageReduzido">
	      			<img style="margin: 5px 0px;" src="../images/header.png" />
      			</td>
      			<td class="headerButtonReduzido">
      				<a href="#" onclick="window.close()" border="0" style="float:right;margin-right:10px;"><img src="../gui/images/CloseButton.png" border="0" /></a>
      			</td>
      		</tr>
      	</tbody>
    </table>
      
	 <div class="fonteTitulo borda" >
	 	Histórico: <xsl:value-of select="historico/entidade"/>
	 </div>   
 
    <div id="scroll" class="scroll">
        <TABLE  width="100%" >
          <tr>
          	<TD width="100%">
            
            <!--div style=" width: '100%'; text-align: 'center'">
              <tr>
                <td></td>
              </tr>
            </div-->
	          
	          <xsl:for-each select="historico/historicoItem">
	            <!--<xsl:sort select="data" order="descending"/>-->
	            <TABLE  width = "100%" cellpadding="4" cellspacing="0">
		            <TR class="fundoPrimario ponteiro" onclick="hideShowDetalhe(this);">
		              <TD width="18" height="18"><img  src="../ha/images/edit_add.png"  /></TD>
		              <TD width="40%" class="fontePadrao"><b>Data: </b> <xsl:value-of select="data"/></TD>
		              <!--<TD class="fontePadrao"><b>Hora: </b> <xsl:value-of select="hora"/></TD>-->
		              <TD width="30%" class="fontePadrao"><b>Solicitante: </b> <xsl:value-of select="solicitante"/></TD>
		              <TD width="30%" class="fontePadrao"><b>Funcionalidade: </b> <xsl:value-of select="funcionalidade"/></TD>
		              <!--<TD class="fontePadrao"><b>Operaçao: </b> <xsl:value-of select="operacao"/></TD>-->
		            </TR>
		            <TR>
		              <TD  colspan ="6" align="center">
		              	<div class="detalhe" style="display: none;">
						          <xsl:for-each select="detalhe/tabela-afetada">
                      	  <xsl:if test="@qtd='0'">
        		              	  <table class="borda" width = "100%" cellpadding="2" cellspacing="0">
            						                <tr class="fundoSecundario">
            						                    <TD width="40%" class="fontePadrao"><b>Tabela Afetada: </b> <xsl:value-of select="nome"/></TD>
														<TD width="30%" class="fontePadrao"><b>Operação: </b> <xsl:value-of select="operacao"/></TD>
														<TD width="30%" class="fontePadrao"><b>Identificador Registro: </b> <xsl:value-of select="identificador"/></TD>            						                    
                                        			</tr>
              					                <!--tr>
            						                    <td>
            						                        <div style=" width: '100%'; text-align: center">
            						                        </div>
            						                    </td>
                                        		</tr-->
            						      </table>	
       						       </xsl:if> 
                         <xsl:if test="@qtd &gt; '0'">   
									<table class="borda" width = "100%" cellpadding="2" cellspacing="0">
   						                <tr class="fundoSecundario">
   						                    <TD width="40%" class="fontePadrao"><b>Tabela Afetada: </b> <xsl:value-of select="nome"/></TD>
											<TD width="30%" class="fontePadrao"><b>Operação: </b> <xsl:value-of select="operacao"/></TD>    						    
											<TD width="30%" class="fontePadrao"><b>Identificador Registro: </b> <xsl:value-of select="identificador"/></TD>												                
                               			</tr>
     					                <tr>
   						                    <td  colspan ="6">
   						                        <table width = "100%">
	                     		              		<tr>
	                      		              			<td class="borda fontePadrao"><b>Campo</b></td>
	                      		              			<td class="borda fontePadrao"><b>Valor Anterior</b></td>
	                      		              			<td class="borda fontePadrao"><b>Novo Valor</b></td>
	                      		              		</tr>
	                     			              	<xsl:for-each select="list/br.com.synchro.framework.ha.to.DiferencaTO">
	                   			              		<tr>
	                   			              			<td class="fontePadrao"><xsl:value-of select="tituloCampo"/></td>
	                   			              			<td class="fontePadrao"><xsl:value-of select="valorAnterior"/></td>
	                   			              			<td class="fontePadrao"><xsl:value-of select="novoValor"/></td>
	                   			              		</tr>
	   			              	                    </xsl:for-each>
   		              		            	    </table>
   						                   	</td>
                               			</tr>
   						            </table>
   						          </xsl:if> 
					         	</xsl:for-each>
		              	</div>
      					  </TD>
		            </TR>
	            </TABLE>
	          </xsl:for-each>
	          
	         </TD>
          </tr>
        </TABLE>
    </div>
   </BODY>
  </HTML>
  </xsl:template>
</xsl:stylesheet>
