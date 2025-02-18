class earth{
  
  int x;
  int y;
  int d;
  int hitv;
  int speed;
  
  float damage;
  
  boolean remove;
 
  
  earth(int startx, int starty){
    x = startx;
    y = starty;
    d = 75;
    speed = 15;
    
    damage = 0.35;
    
    remove = false;
   
  }
  
  void render(){
    fill(#524408);
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

    if(x>=width - 210 - d/2 && x <= width-210+40 + d/2 && y >= p2.p2y -d/2 && y<= p2.p2y + p2.p2h + d/2 && gameover ==false){
 
      p2.hitv +=damage;
      remove=true;
    }
  
  }
}

class earth2{
  
  int x;
  int y;
  int d;
  int speed;
  float damage;
  boolean remove;
  
  earth2(int startx, int starty){
    x = startx;
    y = starty;
    d = 75;
    speed = 15;
    remove=false;
    
    damage = 0.35;
  }
  
  void render(){
    fill(#524408);
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
    
    if(x>=190 - d/2 && x<190+40 + d/2 && y >= p1.p1y -d/2 && y<= p1.p1y + p1.p1h + d/2 && gameover ==false){
      p1.hitv +=damage;
      remove=true;
    }
  }
  
}
