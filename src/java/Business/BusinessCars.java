package Business;
import java.io.*;
import java.util.ArrayList;

// Phase 2: Create "addCars"() mothod
public class BusinessCars {
  public static void addCars(Cars c) {
      String out = MyController.path + "/WEB-inf/Cars.txt";
      try(FileWriter fw =new FileWriter(out, true );
          PrintWriter pw =new PrintWriter(fw);){  
          
          pw.println(c);
      }  catch(Exception e){
          System.out.println(e.toString());
      } 
      } 

    //Phase 3 : create "getCars()  method
   public static Cars [] getCars(){
       ArrayList<Cars> sAL = new ArrayList<Cars>();
       
       try(FileReader fr = new FileReader(MyController.path+"/WEB-inf/Cars.txt");
       BufferedReader br = new BufferedReader(fr);){
           String line;
           String[] splits ;
             Cars c ;
       
       while((line = br.readLine())!= null){
        
       splits = line.split("[|]");       
       c = new Cars (splits[0],splits[1] ,Integer.parseInt(splits[2]),Integer.parseInt(splits[3]) ,Double.parseDouble(splits[4]));
       sAL.add(c);
     
       }         
     
       } catch (Exception e){
      System.out.println(e.toString());
       }
       Cars [] cc = new Cars[sAL.size()];
       cc = sAL.toArray(cc);
       return cc;
           
   }        
           
   
   //Phase 3 : create "erasAllData()  method 
    
    public static void erasAllData(){
        String out = MyController.path + "/WEB-inf/Cars.txt";
        try(FileWriter fw =new FileWriter(out);){
            
        }catch (Exception e){
            System.out.println(e.toString());
        }
    }
    
    //Phase 4 : create "deleteAllMatching()  method
   public static int deleteAllMatching(String Name){
   
   Cars [] cc = getCars ();
   int count =0; 
   for (int i =0; i < cc.length ; i++){
       if(cc [i].getName().equals(Name)){  
          cc[i]= null ;
           count++;
   }
    }    
  
   saveCars(cc);
   return count;
   }
    //Phase 4 : create "saveCars ()  method
   public static void saveCars (Cars[] cc){
       String out = MyController.path+"/WEB-inf/Cars.txt";
       try(FileWriter fw = new FileWriter (out) ;
           PrintWriter pw = new PrintWriter (fw);){
           
           for (int i = 0 ; i< cc.length ; i++){
               if (cc [i] != null ){
                   pw.println(cc[i]);
            } 
         }
           
           
          } catch (Exception e)  {
              System.out.println(e.toString()) ;
                  
                         
               
           }
               
   }   
   
   public static ArrayList<Cars>findAllMatching(String Name)  {
       
       Cars [] cc= getCars();
    ArrayList<Cars> sAL = new ArrayList<Cars>() ;
    for (int i = 0 ; i< cc.length ; i++){
      if (cc[i] .getName().equals(Name)) {
          sAL.add(cc[i]);
      }
     
    }
    return sAL;
   }

   // End of BusinssCars Class 
   
}


