class thunder{
  
  int x;
  int y;
  int d;

  int speed;
  
  float damage;
  
  boolean remove;

  thunder(int startx, int starty){
    x = startx;
    y = starty;
    d = 20;
    speed = 50;
    
    damage = 0.25;
    
    remove = false;
   
  }
  
  void render(){
    fill(#ECF29D);
    circle(x,y,d);
   
  }
  void move(){
    x +=speed;
  }
  void checkremove(){
      if(x>width){
        remove = true;
      }
  }
  
  void connect(){

    if(x>=width - 210 && x <= width-210+40 && y >= p2.p2y && y<= p2.p2y + p2.p2h && gameover ==false){
 
      p2.hitv +=damage;
     
      remove=true;
    }
  
  }
}
class thunder2{
  
  int x;
  int y;
  int d;
  int speed;
  float damage;
  boolean remove;
  
  thunder2(int startx, int starty){
    x = startx;
    y = starty;
    d = 20;
    speed = 50;
    remove=false;
    
    damage = 0.25;
  }
  
  void render(){
    fill(#ECF29D);
    circle(x,y,d);
   
   
  }
  void move(){
    x -=speed;
  }
  void checkremove(){
    if(x<0){
        remove = true;
      }
  }
  
  void connect(){
    
    if(x>=190 && x<190+40 && y >= p1.p1y && y<= p1.p1y + p1.p1h && gameover ==false){
      p1.hitv +=damage;
      remove=true;
    }
  }
  
}
