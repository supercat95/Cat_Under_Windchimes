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
  hint(DISABLE_OPTIMIZED_STROKE);
  hint(DISABLE_STROKE_PERSPECTIVE);
  
  starryCat();
}

void draw() {
  
   //windchime1();
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
      yIncrement[i] = random(-1 * noiseScale, noiseScale);
  }
}

void starryCat() {
  pushMatrix();
    strokeWeight(2);
    stroke(255,255,255);
    noFill();
    translate(width/3,4*height/5); // z was 10
    for (int i = 0; i < 18; i += random(1,8)) { // 43 lines for the cat
      //rect(width/3+i, (height/2) + yIncrement[i], 1, 1); // reference line
      line(i, yIncrement[i], i, yIncrement[i]);
      line(i + 18, yIncrement[i] - 5, i, yIncrement[i] - 7);
      //line(i + 36,-7,54,-5);
    }
    popMatrix();
}
