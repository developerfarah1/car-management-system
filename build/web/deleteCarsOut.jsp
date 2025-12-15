<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Delete Cars Output</title>
             <link href="css/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <header> <h1> Java MVC Project Using Servlets & JSP </h1> </header>
       <section>
           <div>
               <h1 class="head"> Delete Cars Output </h1>
               
               <% String Name =(String) request.getAttribute("Name");   %>
               <% int count =(Integer) request.getAttribute("count"); %>
             
               <% if (count > 0) { %>
               <h3 class="message"> Cars <%= Name %> is delete <%= count %> time (s) successfully .</h3>
               <% } else { %>
               <h3 class="message"> Cars <%= Name %> is not found </h3>
               <% } %>
               
               
                <h3><a class="back" href="deleteCars.jsp">Back to Delete Cars </a></h3>
                <h3><a class="back" href="index.jsp">Back to Main Menu</a></h3>
           </div>
       </section>
        <footer> &COPY; Farah Mohammad , Java 205 , <%= new java.util.Date() %></footer>
    </body>
</html>
