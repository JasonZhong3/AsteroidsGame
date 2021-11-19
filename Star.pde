class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myColor, myX, myY, mySize;
  public Star(){
    myColor = (int)(Math.random()*255);
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*600);
    mySize = 5;
  }
  public void show(){
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
