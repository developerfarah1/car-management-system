<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Cars</title>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <header> <h1> Java MVC Project Using Servlets & JSP </h1> </header>
       <section>
           <div>
               <h1 class="head"> Add Cars</h1>
               <form action="MyController">
                   <table>
                       <tr><th> Name </th><td><input type="text" name="Name"></td></tr>
                       <tr><th> Color</th><td><input type="text" name="Color"></td></tr>
                       <tr><th> Model</th><td><input type="text" name="Model"></td></tr>
                       <tr><th> Speed</th><td><input type="text" name="Speed"></td></tr>
                       <tr><th> Price</th><td><input type="text" name="Price"></td></tr>
                       
                   </table>
                   <br>
                   <input type="hidden" name="opr" value="add">
                   <input type="submit" value="Add">
               </form>
           </div>
       </section>
         <footer> &COPY; Farah Mohammad , Java 205 , <%= new java.util.Date() %></footer> 
    </body>
</html>
