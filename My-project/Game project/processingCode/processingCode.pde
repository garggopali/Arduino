Star [] en = new Star[1000];
Star [] po = new Star[500];

import processing.serial.*;
Serial port;

   int score = 0;
   int t = 1000;
   float ypos = 150;
   float xpos = 250; 
   float speed = 1;

void setup() {
  //Specify your port
  port = new Serial(this, "COM12", 9600);
  port.bufferUntil('\n');  
  
  width=700;
  size(700,500);
  //Red and Green Points
      for (int i = 0; i < en.length; i++){
      en[i] = new Star(1);
      }
      for (int i = 0; i < po.length; i++){
      po[i] = new Star(2);
      }
}


void draw() {
background(0);
enemyFlow();
pointFlow();
kvadratik();
}

void enemyFlow(){
  
  int i = 0;
   for(t=800; millis() > t; t=t+780){
      en[i].appear(255,0);
      en[i].collisionR();
      i++;
  }
  } 
  
void pointFlow(){
  float r2=random(0,500);
    int i = 0;
   for(t=5000; millis() > t; t=t+5000){
      po[i].appear(0,255);
      i++;
  } 
  
}

  void kvadratik(){
      
rectMode(CENTER);
   rect(xpos,ypos,30,30);
   
   if(ypos>height){
    ypos=0;
   } else if(ypos+30<0){
     ypos=height;
   }
}

void serialEvent (Serial port)
{
 ypos = float(port.readStringUntil('\n'));
}

