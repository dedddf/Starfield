NormalParticle[] bob;
void setup() {
  size(500, 500);
  bob = new NormalParticle[1000];
  bob[1] = new  OddballParticle();
  for (int i =2; i< bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
}
void draw() {
  background(0);
  bob[1].show();
  bob[1].move();
  for (int i=2; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class NormalParticle {
  double myX, myY;
  double dSpeed, dDirection;

  NormalParticle() {
    myX = 250;
    myY = 250;
    dSpeed = Math.random()*12;
    dDirection =Math.PI*2*Math.random();
  }
  public void move()
  {


    myX=myX+cos((float)dDirection)*dSpeed;
    myY=myY +sin((float)dDirection)*dSpeed;
  }
  public void show()
  {
    ellipse((float)myX, (float)myY, 8, 3);
  }
}
interface Particle
{

  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  double myX, myY;
  double dSpeed, dDirection;

  OddballParticle() {
    myX = 250;
    myY = 250;
    dSpeed = Math.random()*12;
    dDirection =Math.PI*2*Math.random();
  }
  public void show()
  {
   myX=myX+10;
   myY=myY +sin((float)dDirection)*dSpeed;
  }
  public void move()
  {
    ellipse((float)myX, (float)myY, 8, 3);
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}
