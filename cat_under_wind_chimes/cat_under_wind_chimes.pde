/*
    Joy Bates
    Project 2- Pendulums
    Cat under Wind Chimes
*/

float noiseScale = 15;

// colors for the sunset
color purple1 = color(152,50,117);
color purple2 = color(129,29,94);
color red = color(253,47,36);
color orange = color(255,111,1);
color yellow = color(254,216,0);
color newColor;

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
    
    sunset();
    windchime1();
    
}

void sunset() {
  //noStroke();
  fill(purple1);
  rect(0,0,width,10);
  //newColor = lerpColor(purple1,purple2,.1);
  for (int i = 10; i < height/5; i+=10) {
    newColor = lerpColor(purple1,purple2,.2+(i/10));
    fill(newColor);
    rect(0,i,width,10);
  }
  fill(purple2);
  rect(0,height/5,width,10);
}

// ------------------------------------------------------------
void windchime1() {
  pushMatrix();
    stroke(0,0,0);
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
