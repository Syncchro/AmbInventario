 <f:view
   xmlns:f="http://java.sun.com/jsf/core"
   xmlns:h="http://java.sun.com/jsf/html"
   xmlns:ice="http://www.icesoft.com/icefaces/component">
   <html>
   <head>
   <title>Error Page</title>
     <ice:outputStyle rel='stylesheet' type='text/css' href='./xmlhttp/css/xp/xp.css'/>
   </head>
   <body >
     <ice:panelGrid columns="1">
       <ice:outputText value="Página não encontrada." />
       <a href="./logout.jsp">Voltar</a>
     </ice:panelGrid>
     
     
   </body>
   </html>
 </f:view>