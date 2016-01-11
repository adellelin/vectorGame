PShape svg;

public class Enemies {
  color c;
  float xpos;
  float ypos;
  float xsize;
  float ysize;
  float xspeed;
  
  Enemies(color tempC, float enemXPos,float enemYPos,
  float enemXSize,float enemYSize, float enemXSpeed) {
   c = tempC;
   xpos = enemXPos;
   ypos = enemYPos;
   xsize = enemXSize;
   ysize = enemYSize;
   xspeed = enemXSpeed;
  }

  void display(){
    stroke(c);
    noFill();
    rectMode(CENTER);
    shape(svg, xpos, ypos, 80, 80);
  }
  
  void fall(){
    ypos = ypos + xspeed;
    if (ypos > height){
      ypos = 0;
    }
  }
}