int counter;
int one = 255;
int two = 255;
int three = 255;
int sum = 0;
void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
    one = (int)(Math.random()*256);
    two = (int)(Math.random()*256);
    three = (int)(Math.random()*256);
    counter = 0;
  background(190,72,255);
  for (int k = 20; k < 401 ; k = k + 100) {
    for (int i = 50; i < 451; i= i+60) {
      Die bob = new Die(i,k);
      bob.roll();
  //counter = 0;
      
      bob.show();
      counter = bob.face + counter;
  } }
  textSize(30);
  text("The sum of the dice is: " + counter + ".", 50,450);    
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, face;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    face = 6;
  }
  void roll()
  {
    face = ((int)(Math.random()*6) + 1);
  }
  void show()
  {
    noStroke();
    if (face == 1) {
    fill(one,two,three);
    rect(myX,myY,50,50);
    fill(0);
    ellipse(myX+25, myY+25, 10, 10);}
    if (face == 2) {
    fill(two,one,three);
    rect(myX,myY,50,50);
    fill(0);
    ellipse(myX+15, myY+15, 10, 10);
    ellipse(myX+35, myY+35, 10, 10); }
    if (face == 3) {
    fill(two,three,one);
    rect(myX,myY,50,50);
    fill(0);
    ellipse(myX+15, myY+15, 10, 10);
    ellipse(myX+25, myY+25, 10, 10);
    ellipse(myX+35, myY+35, 10, 10); }
    if (face == 4) {
    fill(one,three,two);
    rect(myX,myY,50,50);
    fill(0);
    ellipse(myX+15, myY+15, 10, 10);
    ellipse(myX+35, myY+15, 10, 10);
    ellipse(myX+35, myY+35, 10, 10); 
    ellipse(myX+15, myY+35, 10, 10); }
    if (face == 5) {
    fill(three,one,two);
    rect(myX,myY,50,50);
    fill(0);
    ellipse(myX+15, myY+15, 10, 10);
    ellipse(myX+25, myY+25, 10, 10);
    ellipse(myX+35, myY+35, 10, 10); 
    ellipse(myX+35, myY+15, 10, 10);
    ellipse(myX+15, myY+35, 10, 10); }
    if (face == 6) {
    fill(three,two,one);
    rect(myX,myY,50,50);
    fill(0);
    ellipse(myX+15, myY+10, 10, 10);
    ellipse(myX+35, myY+10, 10, 10);
    ellipse(myX+15, myY+25, 10, 10);
    ellipse(myX+35, myY+25, 10, 10);
    ellipse(myX+35, myY+40, 10, 10); 
    ellipse(myX+15, myY+40, 10, 10); }
}
}
