
float angle =0;
float angleVel = 0.2;
float amplitude = 100;

void setup(){
  size(500,500);
  background(255);
  
  stroke(0);
  strokeWeight(2);
  noFill();
  
  
}

void draw(){
  
  beginShape();
 for(int x=0; x<=width; x+=24){
  float y = map(sin(angle), -1,1,0, height);
  
  vertex(x,y);
  angle += angleVel;
  
 }
 endShape();
 
}
