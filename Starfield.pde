np[] bob;
void setup(){
  size(500,500);
  bob = new np[100];
  for(int i =0; i< bob.length;i++)
  {
    bob[i] = new np();
  }
  }
void draw(){
  background(0);
  for(int i=0;i<bob.length;i++)
  {
  bob[i].show();
  bob[i].walk();


  }
  
}
class np{
  double myX,myY;
  double dSpeed, dDirection;
  np(){
     myX = 300;
     myY = 300;
     dSpeed = Math.random()*10;
     dDirection =Math.PI*2*Math.random();

  }
  void walk()
  {
    
    myX=myX+cos((float)dDirection)*dSpeed;
    myY=myY +sin((float)dDirection)*dSpeed;
  }
  void show()
  {
    ellipse((float)myX,(float)myY,8,3);
  }
}

