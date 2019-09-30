// all custom functions used to create the windchimes

void windchime(int translateX) { // objects are drawn top to bottom by line and shape
  pushMatrix();
    stroke(0,0,0);
    translate(translateX, 5);
    scale(0.7,0.7);
    
    // all the lines
    strokeWeight(5);
    line(0,0, 40,0); // horizontal line
    line(20,0, 20,20); // 1st vertical line
    line(20,60,20,80); // 2nd vertical line
    line(1,100,-10,132); // left line
    line(20,100,20,120); // middle line
    line(38,100,49,132); // right line
    line(20,140,20,190); // last vertical line

    // all the shapes
    strokeWeight(0);
    fill(redValue(),greenValue(),blueValue());
    ellipse(20,40,40,40); // top large circle
    fill(redValue(),greenValue(),blueValue());
    rect(0,80,40,20); // rectangle
    fill(redValue(),greenValue(),blueValue());
    ellipse(-14,142,25,25); // left circle
    fill(redValue(),greenValue(),blueValue());
    ellipse(20,130,15,15); // middle circle
    fill(redValue(),greenValue(),blueValue());
    ellipse(51,142,25,25); // right circle
    fill(redValue(),greenValue(),blueValue());
    rect(5,190,30,30); // square
 popMatrix();
}

void initializeRandomColorValuesForWindchimes() {
  for (int i = 0; i < 18; i ++) {
    randomRed[i] = int(random(101,205));
    randomGreen[i] = int(random(67,133));
    randomBlue[i] = int(random(33,63));
  }
}

int redValue() {
  return redValue = randomRed[int(random(0,18))];
}

int greenValue() {
  return randomGreen[int(random(0,18))];
}

int blueValue() {
  return randomBlue[int(random(0,18))];
}
