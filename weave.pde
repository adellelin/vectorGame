int A = 1000;
int B = 1000;
int a = 10;
int b = 10;
float l = 3.14152 /2;

class Weave extends Demo {
  
  void draw() {
    float posX = A * sin(a * frameCount + l);
    float posY = B * sin(b * frameCount);
    stroke(100, random(255), 255, 80);
    noFill();
    //ellipse(frameCount % 800, 200, posX, posY);
    rotate(10);
    line(500, 500, posX, posY);
  
  }
}