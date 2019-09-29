/*
    Joy Bates
    Project 2- Pendulums
    Cat under Wind Chimes
*/

// used for the noise effect of the cat
float noiseScale = 5;
float[] yIncrement = new float[200];

// colors for the sunset, obtained from https://colorpalettes.net/color-palette-2096/
color purple1 = color(152,50,117);
color purple2 = color(129,29,94);
color red = color(253,47,36);
color orange = color(255,111,1);
color yellow = color(254,216,0);

// used to create the gradient effect of the sunset
color newColor;
color color1;
color color2;
float y_bandInitial;
float y_bandFinal;

void setup() {
  size(640,400); // 1/4 size of display (2560,1600)
  //fullScreen();
  
  //sunset(purple1,purple2, 0,height/4);
  //sunset(purple2,red, height/4,height/2);
  //sunset(red,orange, height/2,3*height/4);
  //sunset(orange,yellow, 3*height/4,height);
  
  initialize_yIncrement();   
  
  // the following 23 lines draw the cat
  // back of the cat-- left of the dip
  noisyLine(0,0,0,-20);
  noisyLine(18,-5,0,-5);
  noisyLine(33,-10,0,5);
  noisyLine(38,-42,0,45);
  // end of the cat
  noisyLine(45,57,0,-45);
  noisyLine(90,-3,0,0);
  noisyLine(77,-78,0,45);
  noisyLine(72,-100,5,60);
  noisyLine(27,-134,0,95);
  noisyLine(-23,-140,0,120);
  noisyLine(-102,-90,0,170);
  // stomach of the cat
  noisyLine(41,72,40,0);
  // head of the cat -- right/up side
  noisyLine(54,-24,10,80);
  noisyLine(-41,-36,5,-160);
  // head of the cat -- left/down side
  noisyLine(-25,-79,10,175);
  noisyLine(-58,-52,5,-135);
  // head of the cat-- left/bottom ear
  noisyLine(16,-62,0,175);
  noisyLine(-56,38,0,-30);
  // head of the cat-- right/top ear
  noisyLine(-26,24,-5,-60);
  noisyLine(0,-30,0,155);
  // head of the cat-- top side
  noisyLine(-50,20,0,-45);
  // neck of the cat
  noisyLine(-29,-20,-2,-110);
  noisyLine(-22,0,-2,-45);
}

void draw() {
  
   //windchime1();
   
   // the following is for drawing purposes
   fill(100,100,100);
   rect(0,0,50,50);
   fill(0,0,0);
   text(pmouseX,20,20);
   text(pmouseY,20,40);
}

// --------------------------------------------------------------------------------
void sunset(color color1, color color2, float y_bandInitial, float y_bandFinal) {
  pushMatrix();
    translate(-50,-30); // z was -50
    noStroke();
    fill(color1);
    rect(0,y_bandInitial,width + 100,10);
    for (int i = 10; i < y_bandFinal; i+=10) {
      float amount = 0.1+(i/100.0);
      println(amount);
      newColor = lerpColor(color1,color2,amount);
      fill(newColor);
      rect(0,y_bandInitial + i,width + 100,10);
    }
    fill(color2);
    rect(0,y_bandFinal,width + 100,10);
  popMatrix();
}

// ------------------------------------------------------------
void windchime1() {
  pushMatrix();
    stroke(0,0,0);
    strokeWeight(5);
    fill(100,100,100); // temp. replace with textures.
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
    
    translate(20,-40); // z was -20
    line(0,0,0,20); // middle line
    translate(0,20); // z was 0
    sphere(10); // middle sphere
    line(0,10,0,60);
    strokeWeight(0);
    translate(0,70);
    box(30);
    
    strokeWeight(5);
    translate(0,-70); // z was 20
    line(10,-20,20,20); // right line
    translate(20,20);
    sphere(10); // right sphere
  popMatrix();
}

void windchime2() {
  
}

// ------------------------------------------------------------
void initialize_yIncrement() {
  for (int i = 0; i < 200; i ++) {
    yIncrement[i] = 1;
    //yIncrement[i] = random(-1 * noiseScale, noiseScale);
  }
}

void noisyLine(int xInc, int yInc, int lineLength, float rotation) {
  pushMatrix();
    strokeWeight(2);
    stroke(255,255,255);
   
    translate(2*width/5, (4*height/5) - 30); // z was 10
    rotate(radians(rotation));
    
    for (int i = 0; i < 18 + lineLength; i += random(0,8)) {
      pushMatrix();
        translate(xInc, yInc);
          line(i, yIncrement[i], i, yIncrement[i]); 
      popMatrix();
    }
  popMatrix();
}
