class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 4; 
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = -2;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = 16;
      yCorners[3] = 0;
      myColor = 255;
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*600);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 1;
    }
  public void hyper() {
    if (keyPressed) {
      if (key == 'h') {
        ok.myCenterX = (int)(Math.random()*800);
        ok.myCenterY = (int)(Math.random()*600);
        ok.myXspeed = 0;
        ok.myYspeed = 0; 
        ok.accelerate(0);
      }
    }
  }
}
