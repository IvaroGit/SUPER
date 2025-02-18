p1 p1;
p2 p2;


PImage background0;
PImage ship1;
PImage ship2;

PImage thunder;
PImage thunderlogo;
PImage rocklogo;
PImage fire;
PImage firelogo;
PImage ice;
PImage snowlogo;
PImage lightlogo;

ArrayList<fire> firelist;
ArrayList<fire2> firelist2;

ArrayList<ice> icelist;
ArrayList<ice2> icelist2;

ArrayList<thunder> thunderlist;
ArrayList<thunder2> thunderlist2;

ArrayList<earth> earthlist;
ArrayList<earth2> earthlist2;

ArrayList<light> lightlist;
ArrayList<light2> lightlist2;

float p1speed = 10;
float p2speed = 10;
float p1fallspeed = 5;
float p2fallspeed = 5;


boolean[] keys;
boolean p1win = false;
boolean p2win = false;

boolean p1selected = false;
boolean p2selected = false;
boolean p1fire=false;
boolean p2fire=false;
boolean p1ice=false;
boolean p2ice=false;
boolean p1thunder=false;
boolean p2thunder=false;
boolean p1earth=false;
boolean p2earth=false;
boolean p1light=false;
boolean p2light=false;

boolean p1select = true;
boolean p2select = false;

int p1health = 100;
int p2health = 100;



int h1 = 255;
int h2 = 255;
int h3 = 255;
int h4 = 255;
int h5 = 255;

int h12 =  255;
int h22 = 255;
int h32 = 255;
int h42 = 255;
int h52 = 255;

int stage = 0;

boolean gameover = false;




void setup(){
  size(1100,750);
    keys=new boolean[7];
        keys[0]=false;
        keys[1]=false;
      keys[2]=false;
      keys[3]=false;
      keys[4]=false;
      keys[5]=false;
      
    p1 = new p1(120-10+ 80- 67,height/2,107,78);
    p2 = new p2(width - 120-10 - 100,height/2,40,60);
    
    ship1 = loadImage("ship1.png");
    ship2 = loadImage("ship2.png");
    
    firelist = new ArrayList<fire>();
    firelist2 = new ArrayList<fire2>();
    
    icelist = new ArrayList<ice>();
    icelist2 = new ArrayList<ice2>();
    
    thunderlist = new ArrayList<thunder>();
    thunderlist2 = new ArrayList<thunder2>();
    
    earthlist = new ArrayList<earth>();
    earthlist2 = new ArrayList<earth2>();
    
    lightlist = new ArrayList<light>();
    lightlist2 = new ArrayList<light2>();
   
    
    background0 = loadImage("background0.jpg");
    fire =loadImage("firefr.png");
    firelogo = loadImage("firelogo.png");
    snowlogo = loadImage("snowflake.png");
    ice = loadImage("icebullet.png");
    thunderlogo = loadImage("thunder.jpg");
    rocklogo = loadImage("stonelogo.png");
    lightlogo = loadImage("lightlogo.png");
    
}

void draw(){
  

  if(stage==2){
    background(background0);
  fill(150,100);
  noStroke();
  rect(200,0,10,height);
  
  rect(width-200,0,10,height);
  fill(230,100);
  rect(width-200+3,0,4,height);
  rect(203,0,4,height);
  }
   if(stage == 2){
  p1.display();
  p2.display();
  }
  if(stage==2){
    
    if(p1earth){
     for(earth aearth : earthlist){
    aearth.connect();
    aearth.render();
    aearth.move();
    aearth.checkremove();
   
     }
  }
  if(p2earth){
   for(earth2 aearth2 : earthlist2){
     aearth2.connect();
    aearth2.render();
    aearth2.move();
  aearth2.checkremove();
   }
  } 
  if(p1light){
     for(light alight : lightlist){
   
    alight.render();
    alight.connect();
    alight.checkremove();
  
     }
  }
  if(p2light){
     for(light2 alight2 : lightlist2){
   
    alight2.render();
    alight2.connect();
    alight2.checkremove();
  
     }
  }
    if(p1ice){
     for(ice aice : icelist){
    aice.connect();
    aice.render();
    aice.move();
    aice.checkremove();
     }
  }
  if(p2ice){
   for(ice2 aice2 : icelist2){
     aice2.connect();
    aice2.render();
    aice2.move();
    aice2.checkremove();
  
   }
  }
   if(p1thunder){
     
     for(thunder athunder : thunderlist){
    athunder.connect();
    athunder.render();
    athunder.move();
   athunder.checkremove();

     }
  }
  if(p2thunder){
  
   for(thunder2 athunder2 : thunderlist2){
     athunder2.connect();
    athunder2.render();
    athunder2.move();
    athunder2.checkremove();
     
  
   }
  }
    if(p1fire){
  for(fire afire : firelist){
    afire.connect();
    afire.render();
    afire.move();
    afire.checkremove();
  }
    }
  
     
    if(p2fire){
   for(fire2 afire2 : firelist2){
     afire2.connect();
    afire2.render();
    afire2.move();
    afire2.checkremove();
   }
  }
  }
  
    
  
  //bullet remover
  for(int i = firelist.size()-1;i>=0;i-=1){
    fire afire = firelist.get(i);
    
    if (afire.remove==true){
      firelist.remove(afire);
    }
  }
   for(int q2 = lightlist.size()-1;q2>=0;q2-=1){
    light alight = lightlist.get(q2);
    
    if (alight.remove==true){
      lightlist.remove(alight);
    }
  }
   for(int q3 = lightlist2.size()-1;q3>=0;q3-=1){
    light2 alight2 = lightlist2.get(q3);
    
    if (alight2.remove==true){
      lightlist2.remove(alight2);
    }
  }
  
 
  for(int q = firelist2.size()-1;q>=0;q-=1){
    fire2 afire2 = firelist2.get(q);
    
    if (afire2.remove==true){
      firelist2.remove(afire2);
    }
  }
   for(int e = icelist.size()-1;e>=0;e-=1){
    ice aice = icelist.get(e);
    
    if (aice.remove==true){
      icelist.remove(aice);
    }
  }
  
 
  for(int r = icelist2.size()-1;r>=0;r-=1){
    ice2 aice2 = icelist2.get(r);
    
    if (aice2.remove==true){
      icelist2.remove(aice2);
    }
  }
    for(int å = thunderlist.size()-1;å>=0;å-=1){
    thunder athunder = thunderlist.get(å);
    
    if (athunder.remove==true){
      thunderlist.remove(athunder);
    }
  }
  
 
  for(int ä = thunderlist2.size()-1;ä>=0;ä-=1){
    thunder2 athunder2 = thunderlist2.get(ä);
    
    if (athunder2.remove==true){
      thunderlist2.remove(athunder2);
    }
  }
    for(int i2 = earthlist.size()-1;i2>=0;i2-=1){
    earth aearth = earthlist.get(i2);
    
    if (aearth.remove==true){
      earthlist.remove(aearth);
    }
  }
  
 
  for(int i3 = earthlist2.size()-1;i3>=0;i3-=1){
    earth2 aearth2 = earthlist2.get(i3);
    
    if (aearth2.remove==true){
      earthlist2.remove(aearth2);
    }
  }
  

  
  
 

if(p1.p1y <= 0){
  p1.p1y = 0;
}
if(p1.p1y + p1.p1h >= height){
  p1.p1y = height - p1.p1h;
}
if(p2.p2y <= 0){
  p2.p2y = 0;
}
if(p2.p2y + p2.p2h >= height){
  p2.p2y = height - p2.p2h;
}

if(keys[0]){
  p1.p1y -=p1speed;
}

if(keys[3]){
  p2.p2y -=p2speed;
}
p2.p2y +=p2fallspeed;
p1.p1y +=p1fallspeed;

//healthbars
  if(stage==2){
    fill(255);
      rect(50,50,50,254);
      fill(0);
      rect(60,60,30,234);
      fill(255,0,0,h1);
      rect(65,65,20,40);
      fill(255,0,0,h2);
      rect(65,65+46,20,40);
      fill(255,0,0,h3);
      rect(65,65+46*2,20,40);
      fill(255,0,0,h4);
      rect(65,65+46*3,20,40);
      fill(255,0,0,h5);
      rect(65,65+46*4,20,40);
      
       fill(255);
      rect(width-50-50,50,50,254);
      fill(0);
      rect(width-60-30,60,30,234);
      fill(255,0,0,h12);
      rect(width-65-20,65,20,40);
      fill(255,0,0,h22);
      rect(width-65-20,65+46,20,40);
       fill(255,0,0,h32);
      rect(width-65-20,65+46*2,20,40);
       fill(255,0,0,h42);
      rect(width-65-20,65+46*3,20,40);
       fill(255,0,0,h52);
      rect(width-65-20,65+46*4,20,40);
      fill(255);
    textSize(20);
    textMode(CENTER);
    text("Player 1",50,400);
    text("Player 2",width-50-50,400);
  }
    //healthbar check
    
    if(p1.hitv >=1){
      h1 =0;
    }
     if(p1.hitv >=2){
      h2 =0;
    }
     if(p1.hitv >=3){
      h3 =0;
    }
     if(p1.hitv >=4){
      h4 =0;
    }
     if(p1.hitv >=5){
      h5=0;
    }
     if(p2.hitv >=1){
      h12 =0;
    }
     if(p2.hitv >=2){
      h22 =0;
    }
     if(p2.hitv >=3){
      h32 =0;
    }
     if(p2.hitv >=4){
      h42 =0;
    }
     if(p2.hitv >=5){
      h52=0;
    }
    if(p2.hitv >=5){
      p1win = true;
      gameover = true;
    }
    if(p1.hitv >=5 ){
      p2win = true;
      gameover = true;
    }
    if(gameover){
      fill(0);
      rect(0,0,width,height);
      fill(255);
      if(p1win){
        textMode(CENTER);
        textSize(100);
        text("Player 1 wins!",width/2 - 300,height/2 - 200);
      }
      if(p2win){
        textMode(CENTER);
        textSize(100);
        text("Player 2 wins!",width/2 - 300,height/2 - 200);
      }
    }
     if(stage == 0){
       background(background0);
    fill(0);
    
    textSize(50);
    fill(255);
   
    text("Supreme Unleashing of Powers: Elemental Rampage",2,height/2-200);
    textSize(50);
    text("Press any key",width/2-200,height/2);
    
    if(keyPressed){
      background(background0);
      stage = 1;
   
    }
    
   
  }
  
  if(stage == 1){
    background(background0);
    fill(#F7B600);
    rect(45,95,160,160);
    fill(255);
    textSize(20);
    text("- High damage",45,310);
    rect(50,100,150,150);
    image(firelogo,60,110);
    fill(100);
    rect(100,230,50,50);
    fill(0);
    textSize(40);
    text("1",115,265);
    fill(#8FF1FC);
    rect(245,95,160,160);
    fill(255);
    rect(250,100,150,150);
    image(snowlogo,260,110);
    textSize(20);
    text("-Slowing effect",255,310);
     fill(100);
    rect(300,230,50,50);
    fill(0);
    textSize(40);
    text("2",315,265);
    fill(255);
    fill(#E8F282);
    rect(445,95,160,160);
    
    fill(255);
    rect(450,100,150,150);
    image(thunderlogo,470,115,120,120);
    fill(100);
    rect(500,230,50,50);
    fill(0);
    textSize(40);
    text("3",515,265);
    textSize(20);
    fill(255);
    text("-Fast bullets",455,310);
    
    fill(#6F5910);
    rect(645,95,160,160);
    fill(255);
     rect(650,100,150,150);
     image(rocklogo,665,105);
    rect(850,100,150,150);
     fill(100);
    rect(700,230,50,50);
    fill(0);
    textSize(40);
    text("4",715,265);
    fill(255);
    textSize(20);
    text("-Big bullets",655,310);
    fill(#D6D4D4);
    rect(845,95,160,160);
    fill(255);
    rect(850,100,150,150);   
    image(lightlogo,860,112);
    fill(100);
    rect(900,230,50,50);
    fill(0);
    textSize(40);
    text("5",915,265);
    fill(255);
    textSize(20);
    text("-Beam of light", 855,310);
    
     if(p1select){
    textSize(80);
       text("P1 Selecting bullet",300,600);
     }
       
       if(p2select){
        textSize(80);
       text("P2 Selecting bullet",300,600);
       if(keyPressed){
         if(key=='1'){
           p2fire = true;
          p2selected=true;
          
          p2select = false;
          
         }
         if(key=='2'){
            p2ice = true;
          p2selected=true;
          
          p2select = false;
         }
           if(key=='3'){
            p2thunder = true;
          p2selected=true;
          
          p2select = false;
         }
          if(key=='4'){
            p2earth = true;
          p2selected=true;
          
          p2select = false;
         }
          if(key=='5'){
            p2light = true;
          p2selected=true;
          
          p2select = false;
         }
       }
       }
        if(p2selected && p1selected){
      text("Press Space to start",300,600);
  }
  
  
    if(keyPressed){
      if(key==' ' && p2selected && p1selected){
      
      stage=2;
      }
    }
    
    textSize(80);
    text("P1:",50,height-50);
    text("P2:",width-200,height-50);
    fill(255);
    rect(160,height-120,80,80);
    rect(width-200+110,height-120,80,80);
    
    if(p1fire){
      image(firelogo,170,height-110,70,70);
    }
    if(p2fire){
      image(firelogo,width-200+110+10,height-120+10,70,70);
    }
    if(p1ice){
      image(snowlogo,170-4,height-115,70,70);
    }
    if(p2ice){
      image(snowlogo,width-205+110+10,height-130+16,70,70);
    }
    if(p1thunder){
      image(thunderlogo,170-4,height-115,70,70);
    }
     if(p2thunder){
      image(thunderlogo,width-205+110+10,height-130+16,70,70);
    }
    if(p1earth){
      image(rocklogo,170-4,height-115,70,70);
    }
     if(p2earth){
      image(rocklogo,width-205+110+10,height-130+16,70,70);
    }
     if(p1light){
      image(lightlogo,170-4,height-115,70,70);
    }
     if(p2light){
      image(lightlogo,width-205+110+10,height-130+16,70,70);
    }
    
  }
  // slow effect
  if(p2ice){
  if(p1.hitv >0){
  p1speed = 7.5;
  p1fallspeed=3.75;
}
  }
   
     
     if(p1ice){
if(p2.hitv >0){
  p2speed = 7.5;
  p2fallspeed=3.75;
}
     }
     
     
       
     }


void keyPressed()
            //Controlls
    {
      if (key=='w' && gameover == false){
        keys[0]=true;
        
      }
      if (key=='d' && gameover == false){
        keys[1]=true; 
      }
      if (key=='x' && gameover ==false){
        keys[2]=true;
      }
      if (key=='i'&& gameover ==false){
        keys[3]=true; 
      }
      if(key=='j'&& gameover ==false){
        keys[4]=true;
      }
    if(key=='m'&& gameover ==false){
        keys[5]=true;
      }
  
    }
    void keyReleased(){
       if(p1select){
         if(key=='1'){
           p1fire = true;

           p1selected=true;
           p2select = true;
            p1select = false;
         
       }
        if(key=='2'){
           p1ice = true;

           p1selected=true;
           p2select = true;
            p1select = false;
        }
        if(key=='3'){
           p1thunder = true;

           p1selected=true;
           p2select = true;
            p1select = false;
        }
         if(key=='4'){
           p1earth = true;

           p1selected=true;
           p2select = true;
            p1select = false;
        }
         if(key=='5'){
           p1light = true;

           p1selected=true;
           p2select = true;
            p1select = false;
        }
     }
 
     
      if (key=='w'&& gameover ==false){
         keys[0]=false;
         
      }
      if (key=='d'&& gameover ==false){
         keys[1]=false;
        
  
firelist.add(new fire(p1.p1x + p1.p1w/2 + 25,p1.p1y + p1.p1h/2));
icelist.add(new ice(p1.p1x + p1.p1w/2 + 25,p1.p1y + p1.p1h/2));
thunderlist.add(new thunder(p1.p1x + p1.p1w/2 + 25,p1.p1y + p1.p1h/2));
earthlist.add(new earth(p1.p1x + p1.p1w/2 + 25,p1.p1y + p1.p1h/2));
lightlist.add(new light(p1.p1x + p1.p1w/2 + 30,p1.p1y + p1.p1h/2 - 10, 1000,20));




   


      }
      if (key=='x'&& gameover ==false){
         keys[2]=false;
      }
      if (key=='i'&& gameover ==false){
         keys[3]=false;
      }
      if(key=='j'&& gameover ==false){
        keys[4]=false;
        
        firelist2.add(new fire2(p2.p2x + p2.p2w/2 - 25,p2.p2y + p2.p2h/2));
        icelist2.add(new ice2(p2.p2x + p2.p2w/2 - 25,p2.p2y + p2.p2h/2));
        thunderlist2.add(new thunder2(p2.p2x + p2.p2w/2 - 25,p2.p2y + p2.p2h/2));
        earthlist2.add(new earth2(p2.p2x + p2.p2w/2 - 25,p2.p2y + p2.p2h/2));
        lightlist2.add(new light2(p2.p2x - 50 + p2.p2w/2 + 30,p2.p2y + p2.p2h/2 - 10, -1000 ,20));
        
      }
     
      if(key=='m'&& gameover ==false){
        keys[5]=false;
      }
    
    }
 
