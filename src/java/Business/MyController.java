package Business;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "MyController", urlPatterns = {"/MyController"})
public class MyController extends HttpServlet {
// phase 2 : defind "path" as a static "string
    
    public static String path ; 
    
    // phase 2 : create init() mothod and store the real path into the path variable 
    
        public void init ()   {
        path = this.getServletContext().getRealPath("/");
    
    }
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
   // phase 2 : make "index.jsp" as the default page
        
        String url ="/index.jsp";
        
        // phase 2 : code for "add" opr parameter
        
        String opr = request.getParameter("opr");
        
        // phase 2 : code for "add" opr 
        
        if (opr.equals("add")){
           String Name = request.getParameter("Name");
           String Color = request.getParameter("Color");
           int Model =Integer.parseInt(request.getParameter("Model"));
           int Speed =Integer.parseInt(request.getParameter("Speed"));
           double Price =Double.parseDouble(request.getParameter("Price"));
           
           Cars c = new Cars ( Name ,Color ,Model ,Speed ,Price );
           
           BusinessCars.addCars(c);
           request.setAttribute("c", c);
           url="/addCarsOut.jsp";
        }
      //phase 3 : code for "list" opr 
        
         else if (opr.equals("list")){
            Cars[] Cars =BusinessCars.getCars();
            request.setAttribute("cc", Cars);
            url="/listOut.jsp";
        }
      //phase 3 : code for "erase" opr 
         
          else if (opr.equals("erase")){
           String name = request.getParameter("name");
           BusinessCars.erasAllData();
           request.setAttribute("name",name);
            url="/eraseAllDataOut.jsp";
          }      
      // phase 4 : code for "deleteAllMatching" opr 
          else if (opr.equals("deleteAllMatch")) {
              String Name = request.getParameter("Name");
              int count =BusinessCars.deleteAllMatching(Name);
              request.setAttribute("Name", Name);
              request.setAttribute("count",(Integer) count );
              url="/deleteCarsOut.jsp";
          }
     // phase 5 : code for "findAllMatching" opr 
        else if (opr.equals("findAllMatch")) {
        String Name = request.getParameter("Name");
        ArrayList<Cars> sAL =BusinessCars.findAllMatching(Name);
        request.setAttribute("Name", Name);
        request.setAttribute("sAL", sAL);
        url="/findCarsOut.jsp";
        }
    // phase 2 : get dispacher and forward it (2 sleps in 1)
        
      request.getServletContext().getRequestDispatcher(url).forward(request, response);
    }
     //End of "doget" method
    
    // phase 2 : do necessary thingds for"dopost "  method
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
         doGet(request, response);
                 
    }
//phase 2: " getServletInfo" method      
    @Override
    public String getServletInfo() {
       return "Short description";
        }// </editor- fold>
    
        }// End of MyController Class

