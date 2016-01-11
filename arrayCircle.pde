
float px, py, px2, py2;
float angle = 45; 
float angle2 = 2;
float radius = 500;
float freq = 2;
float freq2 = 2;
float x, x2;

class ArrayC extends Demo {
void draw() {
  //stroke(212, 128, 32, 128);
  frameRate(25);
  noFill();
  //ellipse(width/2, height/2, radius*2, radius*2);
  for (float i = 0; i < 360; i+= 10) {
    //PVector a = new PVector(width/2 + cos(radians(i))*(radius), height/2 + sin(radians(i))*(radius));
    px = width/2 + cos(radians(i))*(radius);
    py = height/2 + sin(radians(i))*(radius);
    px2 = width/2 + cos(radians(i + 10))*(radius);
    py2 = height/2 + sin(radians(i + 10))*(radius);
    vector_line(false, new PVector(px,py), new PVector(px2,py2));
    vector_line(false, new PVector(px * 2,py * 2), new PVector(px2 * 2,py2 * 2));
    //ellipse(px, py, 25, 25);
    
    for (float j = 0; j < 0.5; j += 0.05) {
     //line(px, py, px2, py2);
      
      
     // line(px, py, px2 * (1+j), py2 * (1+j));
     // line(width/2, height/2, px * (1+j), py * (1+j));
    }
  }

  }
}