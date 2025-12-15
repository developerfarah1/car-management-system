<%@page import="Business.Cars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Cars Output</title>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header> <h1> Java MVC Project Using Servlets & JSP </h1> </header>
        <section>
          <div>
              <h1 class="head">Add Cars Output</h1>
              <% Cars c =(Cars) request.getAttribute("c");%>
              <table border="1">
                  <tr><th> Name </th><td> <%=c.getName()%></td></tr>
                  <tr><th> Color </th><td> <%=c.getColor()%></td></tr>
                  <tr><th> Model</th><td> <%=c.getModel()%></td></tr>
                  <tr><th> Speed </th><td> <%=c.getSpeed()%></td></tr>
                  <tr><th> Price </th><td> <%=c.getPrice()%></td></tr>
              </table>
                  <h3 class="message">Cars <%=c.getName()%> is added successfully.</h3>
                  <h3><a class="back" href="addCars.jsp">Back to Add Cars</a></h3>
                  <h3><a class="back" href="index.jsp">Back to Main Menu</a></h3>
          </div>
      </section>
       <footer> &COPY; Farah Mohammad , Java 205 , <%= new java.util.Date() %></footer> 
        
    </body>
</html>
