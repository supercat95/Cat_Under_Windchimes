/*
    Joy Bates
    Project 2- Pendulums
    Cat under Wind Chimes
*/

float noiseScale = 15;

void setup() {
  size(640,400,P3D); // 1/4 size of display (2560,1600)
  //fullScreen();
  
    /*
    // test line for reference
    strokeWeight(5);
    for (int i = 0; i < 200; i += random(1,8)) {
      float yInc = random(-1 * noiseScale, noiseScale);
      line(width/3+i, (height/2) + yInc, (width/3)+i, (height/2) + yInc);
    }
    */
    
    windchime1();
    
}

void windchime1() {
  pushMatrix();
    strokeWeight(5);
    translate(width/2 - 20, height/8);
    
    line(0,0, 40,0); // horizontal line
    line(20,0, 20,20); // vertical line

    translate(20,40);
    sphere(20);
    
    translate(0,20);
    line(0,0,0,30);
    
    strokeWeight(0);
    translate(0,30);
    box(40,20,20);
    
    strokeWeight(5);
    translate(0,10);
    line(-10,0,-20,40); // left line
    translate(-20,40);
    sphere(10); // left sphere
    
    translate(20,-40,-20);
    line(0,0,0,20); // middle line
    translate(0,20,0);
    sphere(10); // middle sphere
    line(0,10,0,60);
    strokeWeight(0);
    translate(0,70);
    box(30);
    
    strokeWeight(5);
    translate(0,-70,20);
    line(10,-20,20,20); // right line
    translate(20,20);
    sphere(10); // right sphere
  popMatrix();
}

void windchime2() {
  
}
