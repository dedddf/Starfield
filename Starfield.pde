Particle[] bob = new Particle[500];
void setup() {
  size(500, 500);

  
  for (int i =0; i< bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bob[1] = new OddballParticle();
  bob[2] = new JumboParticle();
}
void draw() {
  frameRate(20);
  background(0);

  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
    bob[1].show();
}
class NormalParticle implements Particle {
  double myX, myY;
  double dSpeed, dDirection;

  NormalParticle() {
    myX = 250;
    myY = 250;
    dSpeed = (Math.random()*10)+0;
    dDirection =(Math.PI*2*Math.random());
  }
  public void move()
  {
noStroke();
     if(myX>500){
        myX=250;
        fill(0, 0, 0);
      }      
      if(myX<0){
        myX=250;
        fill(0, 0, 250);
      }      
      if(myY>500){
        myY=250;
        fill(0, 250, 0);
      }      
       if(myY<0){
        myY=250;
      }      
    
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
class OddballParticle implements Particle //uses an interface
{  
  
  public void move(){  
    
   
  }
  public void show()
  {
    
    
    ellipse(250, 250, 80, 80);
    
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
public void show()
  {
    fill(250, 0, 0);
    ellipse((float)myX, (float)myY, 10, 20);
        
  }


}
