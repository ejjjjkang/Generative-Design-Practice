
float stepSize;
float x =0,y=0;
float modulSize = 25;

PShape lineModul;

void setup(){
 size(displayWidth,displayHeight);
 background(255);
 smooth();
 x = mouseX;
 y = mouseY;
 cursor(CROSS);
 lineModul = loadShape("03.svg");
 
}

void draw(){
   if(mousePressed){
     float d = dist(x, y, mouseX, mouseY);
   
   if(d>stepSize){
     float angle = atan2(mouseY-y, mouseX-x);
     
     pushMatrix();
     translate(mouseX, mouseY);
     rotate(angle +PI);
     shape(lineModul, 0,0, d, modulSize);  
     popMatrix();
     
     x = x + cos(angle)*stepSize;
     y = y + sin(angle)*stepSize;
     
   }
  
   }
  
}

void mousePressed(){
 x = mouseX;
 y = mouseY;
}
