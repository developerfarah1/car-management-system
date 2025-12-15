package Business;


public class Cars {
    private String Name;
    private String Color;
    private int Model;
    private int Speed;
    private double Price;
    
 

 public Cars( String Name ,String Color, int Model ,int Speed ,double Price  ){
 this.Name = Name;
 this.Color = Color;
 this.Model = Model ;
 this.Speed  = Speed  ;
 this.Price = Price ;
}

  
   

 public String getName (){
    return Name; 
 }
 public String getColor (){
    return Color; 
 }
 
 public int getModel (){
     return Model;
 }
 public int getSpeed (){
     return Speed;
 }
 
 
 public double getPrice (){
     return Price;
 }



    @Override
    public String toString(){
    return Name +"|"+ Color +"|"+ Model +"|"+Speed +"|" +Price  ;
}
}
