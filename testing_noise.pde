// this program is to test noise

float noiseScale = 15;

void setup() {
  size(600,600);
  
    // noise successfully applied to a line
    strokeWeight(5);
    for (int i = 0; i < 200; i += random(1,8)) {
      float yInc = random(-1 * noiseScale, noiseScale);
      line(width/3+i, (height/2) + yInc, (width/3)+i, (height/2) + yInc);
    }
    
    /*
    // attempted to apply noise to a bezier curve
    noFill();
    for (int i = 0; i < 50; i ++) {
      float xIncrement = random(-1 * noiseScale, noiseScale);
      float yIncrement = random(-1 * noiseScale, noiseScale);
      bezier(100,400, 150,300, 125,350, 200,400);
    }
    */
}
