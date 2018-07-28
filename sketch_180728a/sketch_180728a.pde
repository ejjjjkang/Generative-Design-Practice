
int NORTH =0;
int NORTHEAST =1;
int EAST = 2;
int SOUTHEAST = 3;
int SOUTH = 4;
int WEST = 6;
int SOUTHWEST = 5;
int NORTHWEST = 7;

int stepSize =1;
int diameter = 1;

int direction;
int posX = width/2;
int posY = height/2;


void setup(){
 size(500,500);
 background(255);
 smooth();
 
}

void draw(){
  for(int i=0; i<=mouseX; i++){
   direction = (int)random(0,8); 
  }
  
  if(direction == NORTH){
   posY -= stepSize; 
  } else if(direction == NORTHEAST){
   posX += stepSize;
   posY -= stepSize;
  } 
  else if(direction == EAST){
   posX += stepSize; 
  }
  
  else if(direction == SOUTHEAST){
   posX += stepSize;
   posY += stepSize;
  }
  
  if(posX > width) posX = 0;
  if(posX < 0) posX = width;
  if(posY < 0) posY = height;
  if(posY > height) posY = 0;
  
  fill(0,40);
  ellipse(posX + stepSize/2, posY + stepSize/2, diameter,diameter);
}
