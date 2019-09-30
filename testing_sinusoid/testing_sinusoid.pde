// program to test a sine wave to create a pendulum/swinging motion

static int TIME = 0;

void setup() {
  size(600,600);
}

void draw() {
  background(100,100,100);
  TIME+=1;
  translate(width/2,height/5);
  rotate(sin(TIME * 0.1) * 1.5);
  line(0,0,0,400);
}
