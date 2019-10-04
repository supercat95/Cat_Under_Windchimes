// all custom functions used to create the cat/cow

void initialize_yIncrement() {
  for (int i = 0; i < 200; i ++) {
    yIncrement[i] = 1;
    yIncrement[i] = random(-1 * noiseScale, noiseScale);
  }
}

void noisyLine(int xInc, int yInc, int lineLength, float rotation) {
  pushMatrix();
    rotate(radians(rotation));
    
    for (int i = 0; i < 18 + lineLength; i += random(0,8)) {
      stroke(random(240,255),random(240,255),random(240,255));
      pushMatrix(); 
        translate(xInc, yInc);
         line(i, yIncrement[i], i, yIncrement[i]); 
      popMatrix();
    }
    
  popMatrix();
}

void swingingTail() {
  TIME+=1;
  pushMatrix();
    strokeWeight(4);
    translate(450,324);
    rotate(109.6);
    scale(2,2);
      noisyLine(0,0,40,sin(TIME * 0.1)*20);
      noisyLine(-4,-2,42,sin(TIME * 0.1)*20);
  popMatrix();
}
