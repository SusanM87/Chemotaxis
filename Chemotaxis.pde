PImage img;

Moth[] bob;
void setup()
{
  size(500,500);
  img = loadImage("moth.png");
  bob = new Moth[5];
  for(int i = 0; i < bob.length; i++)
    bob[i] = new Moth();
}

void draw()
{
  background(197);
  lamp();
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].fly();
    bob[i].show();
  }
  
}

class Moth
{
  int myX, myY;
  Moth()
  {
    myX = 0;
    myY = 0;
  }
  void fly()
  {
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*9)-2;
    else
      myX = myX + (int)(Math.random()*9)-6;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*9)-2;
    else 
      myY = myY + (int)(Math.random()*9)-6;
  }
  void show()
  {
    image(img, myX, myY);
  }
  
}

void lamp()
{
 noStroke();
 //table
 fill(191,151,65); //lighter
 quad(80,370, 310,370, 270,400, 40,400);
 rect(262,410,8,100);
 rect(295,380,10,95);
 rect(85,400,10,72);
 rect(50,410,10,100); 
 fill(180,143,62); //darker
 rect(40,400,230,10);
 rect(40,410,15,100);
 quad(270,400, 310,370, 310,380, 270,410);
 rect(270,399,10,110);
 rect(300,380,10,95);
 rect(80,400,10,72);
 //glowing light
 fill(255,246,75,50);
 ellipse(25+mouseX,30+mouseY,75,65);
 //outlet
 fill(255);
 rect(470,400,20,30);
 fill(0);
 ellipse(480,410,15,10);
 stroke(1);
 line(477,420,477,425);
 line(482,420,482,425);
 //cord
 line(30+mouseX,75+mouseY,482,412);
 //lamp stand
 ellipse(25+mouseX,70+mouseY,35,40);
 //lamp hood
 fill(250,250,237);
 quad(10+mouseX,10+mouseY, 40+mouseX,10+mouseY, 60+mouseX,60+mouseY, -10+mouseX,60+mouseY);
}