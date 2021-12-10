//your variable declarations here
int lives = 5;
boolean collision = true;
Star[] bob = new Star[200];
Spaceship ok = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() {
  for (int i = 0; i < 15; i++)
    rock.add(i, new Asteroid());
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Star();
  }
  ok = new Spaceship();
  size(800, 600);
}
public void keyPressed() {
  if (key == 'a') {
    ok.turn(-5);
  }
  if (key == 'd') {
    ok.turn(5);
  }
  if (key == 'w') {
    ok.accelerate(0.1);
  }
  if (key == 's') {
    ok.accelerate(-0.1);
  }
  if (key == ' ') {
    shots.add(new Bullet(ok));
  }
}
public void draw() {
  //your code here
  int asteroids = rock.size();
  background(0);
  noStroke();
  fill(255);
  textSize(20);
  text("Lives: " + lives, 700, 50);
  text("# of Asteroids:  " + asteroids, 600, 70);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
  }
  ok.move();
  ok.show();
  ok.hyper();
  for (int i = 0; i < rock.size(); i++) {
    rock.get(i).show();
    rock.get(i).move();
    if (rock.size() < 15)
      rock.add(new Asteroid());
    float d = dist((float)ok.getX(), (float)ok.getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
    //for (int e = 0; e < shots.size(); e++) {
    //  shots.get(e).show();
    //  shots.get(e).move();
    //}
    //  float c = dist((float)shots.get(e).getX(), (float)shots.get(e).getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
    //  if (c < 25) {
    //    rock.remove(i);
    //  }
    if (collision == true) {
    }
    if (d < 25) {
      rock.remove(i);
      lives--;
    }
  }
  if (lives <= 0) {
    background(0);
    fill(255, 0, 0);
    text("GAME OVER!! Press [r] to restart!", 220, 300);
    ok.myXspeed = 0;
    ok.myYspeed = 0;
    collision = false;
    if (key == 'r') {
      lives = 5;
      collision = true;
      ok.myCenterX = (int)(Math.random()*800);
      ok.myCenterY = (int)(Math.random()*600);
      ok.myPointDirection = (int)(Math.random()*360);
    }
  }
}
