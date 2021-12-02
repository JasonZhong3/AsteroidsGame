//your variable declarations here
Star[] bob = new Star[200];
Spaceship ok = new Spaceship();
public void setup() {
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Star();
  }
  ok = new Spaceship();
  size(800, 600);
}
public void draw() {
  //your code here
  background(0);
  noStroke();
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
  }
  if (keyPressed) {
    if (key == 'a') {
      ok.turn(-5);
    }
    if (key == 'd') {
      ok.turn(5);
    }
    if (key == ' '){
      ok.accelerate(0.1);
    }
  }
  ok.move();
  ok.show();
}
