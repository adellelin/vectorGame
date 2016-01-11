float xPos = 0;
float yPos;
float hit;
float friendObj;
Enemies enemy1;
Enemies enemy2;
Enemies[] enemyGroup;
color c;
float xpos;
float ypos;
float xsize;
float ysize;
float xspeed;

ParticleSystem ps;

class cloudGame extends Demo {

  cloudGame() {
    //size(500, 500);
    smooth();
    noStroke();
    yPos = height / 2;
    enemyGroup = new Enemies[2];
    //enemy1 = new Enemies(100, 100, 0, 30, 30, 2);
    //enemy2 = new Enemies(255, 300, 0, 20, 25, 1);

    for (int i = 0; i < enemyGroup.length; i++) {
      enemyGroup[i] = new Enemies(255, 100 + i * 200, 0, 
        15 + i * 10, 15 + i * 10, random(2));
      
    }
    svg = loadShape("cloud.svg");
  }

  void draw() {
    background(0);
    //fill(0, 20, 220);
    noFill();
    //ellipse(xPos % 500, yPos, 50, 50);
    xPos += 2;
    stroke(255);

    ellipse(mouseX, mouseY, 15, 15);

    for (int i = 0; i < enemyGroup.length; i++) {
      enemyGroup[i].fall();
      enemyGroup[i].display();
      hit = dist(enemyGroup[i].xpos, enemyGroup[i].ypos, mouseX, mouseY);  
      if (hit <= 80) {
        if(ps == null)
           ps = new ParticleSystem(new PVector(enemyGroup[i].xpos, enemyGroup[i].ypos));
        else
           ps.origin = new PVector(enemyGroup[i].xpos, enemyGroup[i].ypos);
        ps.addParticle();
        ps.run();
        if (mouseX > enemyGroup[i].xpos) {
          enemyGroup[i].xpos -= 4;
        } else if (mouseX < enemyGroup[i].xpos) {
          println(i + "hit");
          enemyGroup[i].xpos += 4;
          //enemyGroup[i].c = 0;
        }
      }
    }
  }
}