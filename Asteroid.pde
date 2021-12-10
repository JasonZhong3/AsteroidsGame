class Asteroid extends Floater {
  public double rotSpeed = 3;
  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 24;
    yCorners[0] = 0;
    xCorners[1] = 8;
    yCorners[1] = -16;
    xCorners[2] = -16;
    yCorners[2] = -8;
    xCorners[3] = -24;
    yCorners[3] = -24;
    xCorners[4] = -32;
    yCorners[4] = 8;
    xCorners[5] = -8;
    yCorners[5] = 32;
    myColor = 200;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
    myXspeed = (int)(Math.random()*10)-5;
    myYspeed = (int)(Math.random()*10)-5;
    myPointDirection = 3;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
