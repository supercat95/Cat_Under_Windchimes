/*
    Joy Bates
    Project 2- Pendulums
    Cat under Wind Chimes
*/

// used for the noise effect of the cat
float noiseScale = 5;
float[] yIncrement = new float[200];

static int TIME = 0;

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

// used for the fills of the shapes for the windchime
color[] randomRed = new color[18];
color[] randomGreen = new color[18];
color[] randomBlue = new color[18];
int redValue;
int greenValue;
int blueValue;

void setup() {
  size(640,400); // 1/4 size of display (2560,1600)
  //fullScreen();
  
  initialize_yIncrement();   
  initializeRandomColorValuesForWindchimes();
  
  // static background
  sunset(purple1,purple2, 0,height/4);
  sunset(purple2,red, height/4,height/2);
  
  windchime(width/4 - 40);
  windchime(width/2 - 20);
  windchime(3 * width/4);
}

void draw() {
  // background of animated cat
  sunset(red,orange, height/2,3*height/4);
  sunset(orange,yellow, 3*height/4,height);
  
  // the following draws the cat (which looks kinda like a cow)
  pushMatrix();
    strokeWeight(2);
    translate(width/3, (height/2) - 10); // z was 10
    scale(2,2);
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
  popMatrix();
   
  swingingTail();
  
  //// the following is for drawing purposes
  //fill(100,100,100);
  //rect(0,0,50,50);
  //fill(0,0,0);
  //text(pmouseX,20,20);
  //text(pmouseY,20,40);
  
}
