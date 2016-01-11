/** \file
 * Several different drawing demos.
 *
 * (c) 2016 Trammell Hudson, Adelle Lin and Jacob Joaquin
 */

class Demo
{
  void draw() {}
}


ArrayList<Demo> demos;
int frame_count = 0;
Demo d;

void setup() {
    size(1024, 1200);
    surface.setResizable(true);

    vector_setup();

    blendMode(ADD);
    noFill();
    stroke(212, 128, 32, 128);

    frameRate(25);

    demos = new ArrayList<Demo>();
   
    demos.add(new cloudGame());
    demos.add(new ArrayC());
    demos.add(new Weave());

    d = demos.get(1);
}


void draw() {
    if (frame_count++ > 1000)
    {
        frame_count = 0;
        d = demos.get((int) random(demos.size()));
    }
    
    d.draw();

    vector_send();
}