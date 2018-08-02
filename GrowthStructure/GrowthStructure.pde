import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;
int currentCount = 1;
int maxCount = 5000;

float [] x = new float[maxCount];
float [] y = new float[maxCount];
float [] r = new float[maxCount];

void setup(){
  
  size(500,500);
  smooth();
  
  
  x[0] =width/2;
  y[0] = height/2;
  r[0] = 10;
  
}

void draw(){
  background(255);
  float newR = random(1,7);
  float newX = random(0+newR, width-newR);
  float newY = random(0+newR, height-newR);
  
  int closetIndex =0;
  float closetDist = 1000000;
  
  for(int i=0; i< currentCount; i++){
    
    float newDist = dist(newX, newY, x[i], y[i]);
    if(newDist < closetDist){
     closetDist = newDist;
     closetIndex = i;
    }
    
  }
  
  float angle = atan2(newY-y[closetIndex], newX-x[closetIndex]);
  
  x[currentCount] = x[closetIndex] + cos(angle)*(r[closetIndex] + newR);
  y[currentCount] = y[closetIndex] + sin(angle)*(r[closetIndex] + newR);
  r[currentCount] = newR;
  currentCount++;
  
  for(int i=0; i<currentCount; i++){
    noFill();
    ellipse(x[i], y[i], r[i]*2, r[i]*2);
  }
  if (currentCount>=maxCount) noLoop();
  
  
}
