void sunset(color color1, color color2, float y_bandInitial, float y_bandFinal) {
  pushMatrix();
    translate(-50,-30); // z was -50
    noStroke();
    fill(color1);
    rect(0,y_bandInitial,width + 100,10);
    for (int i = 10; i < y_bandFinal; i+=10) {
      float amount = 0.1+(i/100.0);
      newColor = lerpColor(color1,color2,amount);
      fill(newColor);
      rect(0,y_bandInitial + i,width + 100,10);
    }
    fill(color2);
    rect(0,y_bandFinal,width + 100,10);
  popMatrix();
}
