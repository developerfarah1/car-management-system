<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Menu</title>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header><h1> Java MVC Project Using Servlets & JSP</h1></header>    
        <section>
            <div>
                <h1 class="head">Main Menu</h1>
                <table>
                    <tr><th><a href="addCars.jsp">1- Add Cars</a></th></tr>
                    <tr><th><a href="deleteCars.jsp">2- Delete All Matching</a></th></tr>
                    <tr><th><a href="findCars.jsp">3- Find All Matching</a></th></tr>
                    <tr><th><a href="MyController?opr=erase">4- Erase All Data</a></th></tr>
                    <tr><th><a href="MyController?opr=list">5- List Cars</a></th></tr>
                    
                </table>
            </div>
        </section>
       <footer> &COPY; Farah Mohammad , Java 205 , <%= new java.util.Date() %></footer>  
    </body>
</html>
