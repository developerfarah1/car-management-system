<%@page import= "Business.Cars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> List Cars Output</title>
             <link href="css/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <header> <h1> Java MVC Project Using Servlets & JSP </h1> </header>
       <section>
           <div>
               <h1 class="head"> List Cars Output </h1>
               <% Cars[] cc= (Cars [])request.getAttribute("cc"); %>
               
               <% if(cc.length > 0) { %>
               <table border="1">
                   <tr><th> Name </th><th> Color </th><th> Model </th><th> Speed </th><th> Price </th></tr>
                   
                   
                  <% for(int i= 0; i< cc.length;i++){ %>
                  
    <tr><td><%=cc[i].getName()%></td><td><%=cc[i].getColor()%></td><td><%=cc[i].getModel()%></td><td><%=cc[i].getSpeed()%></td><td><%=cc[i].getPrice()%></td></tr>
                <%   }    %>
                
               </table>
                <% } else { %>
                <h3 class="message">The file is empty</h3>
                <% } %>   
                <h3><a class="back" href="index.jsp">Back to Main Menu</a></h3>
           </div>
       </section>
        <footer> &COPY; Farah Mohammad , Java 205 , <%= new java.util.Date() %></footer>
    </body>
</html>
