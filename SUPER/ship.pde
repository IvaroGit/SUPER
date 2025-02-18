class p1{
  

  int p1y;
  int p1x;
  int p1w;
  int p1h;
  int speed;
  float hitv;
  

  
  
  p1(int sp1x,int sp1y, int sp1w, int sp1h){
    
  p1y=sp1y;
  p1x =sp1x;
  p1w = sp1w;
  p1h = sp1h;

  
  hitv = 0;
 
 
  }
  void display(){

    fill(255,0);
    noStroke();
      rect(p1x + 40,p1y + p1h/2 - 20,10,40);
      image(ship1,p1x + 40,p1y + p1h/2 - 20);
     
    rect(p1x,p1y,p1w,p1h);
    println(hitv);
  }
 
 
}
class p2{
  

  int p2y;
  int p2x;
  int p2w;
  int p2h;
  
  float hitv;

   
  
  p2(int sp2x,int sp2y, int sp2w, int sp2h){
    
  p2y=sp2y;
  p2x =sp2x;
  p2w = sp2w;
  p2h = sp2h;
  
  hitv = 0;
  
  
   
  }
  void display(){

    fill(255,0);
    noStroke();
    image(ship2,p2x -10,p2y + p2h/2 - 20);
      rect(p2x -10,p2y + p2h/2 - 20,10,40);
      
    rect(p2x,p2y,p2w,p2h);
    
    
  }
 
 
 
}
