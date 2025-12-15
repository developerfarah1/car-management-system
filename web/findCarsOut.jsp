<%@page import ="java.util.ArrayList" %>
<%@page import ="Business.Cars" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Find Cars Output</title>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <header> <h1> Java MVC Project Using Servlets & JSP </h1> </header>
       <section>
           <div>
               <h1 class="head">  Find Cars Output </h1>
               <% String Name =(String) request.getAttribute("Name");   %>
               <% ArrayList<Cars> sAL = ( ArrayList<Cars>)request.getAttribute("sAL");   %>
          
               <% if (sAL.size()> 0) { %>  
               
              
               <table border="1"   >
                   
                   <tr><th>Name</th><th>Color</th><th>Model</th><th>Speed</th><th>Price</th></tr>           
                   <%for (Cars c :sAL)   { %>
<tr><th><%=c.getName()%></th><th><%=c.getColor()%></th><th><%=c.getModel()%></th><th><%=c.getSpeed()%></th><th><%=c.getPrice()%></th></tr>      
                    <%    } %>  
               </table> 
                  <% } else   { %> 
                 
                  <h3 class="message">Cars <%=Name%> is not found .</h3>
                   <%    } %> 
                   
                 <h3><a class="back" href="findCars.jsp"> Back to Find Cars </a></h3>
                 <h3><a class="back" href="index.jsp">Back to Main Menu</a></h3>
              
           </div>
       </section>
         <footer> &COPY; Farah Mohammad , Java 205 , <%= new java.util.Date() %></footer> 
    </body>
</html>

