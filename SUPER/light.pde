class light{
  
 int x;
 int y;
 int w;
 int h;
 
 float damage;
 boolean remove;
 light(int startx, int starty, int startw, int starth){
    x = startx;
    y = starty;
    w = startw;
    h = starth;
    damage = 0.25;
    remove = false;
 }
 void render(){
   fill(255);
   rect(x,y,w,h);
 }
 void connect(){
   if(y + h >= p2.p2y && y < p2.p2y + p2.p2h){
     p2.hitv += damage;
   }
 }
   void checkremove(){

        remove = true;
      }
  
}
class light2{
  
  int x;
  int y;
  int w;
  int h;
 
  float damage;
  boolean remove;
  
  light2(int startx, int starty, int startw,int starth){
    x = startx;
    y = starty;
    w = startw;
    h = starth;
   
    remove=false;
    
    damage = 0.25;
  }
  
  void render(){
    fill(255);
    noStroke();
   rect(x,y,w,h);
   
  }
 
  void checkremove(){
   
        remove = true;
      }
  
  
  void connect(){
 if(y + h >= p1.p1y && y < p1.p1y + p1.p1h){
     p1.hitv += damage;
   }
      
}
}
