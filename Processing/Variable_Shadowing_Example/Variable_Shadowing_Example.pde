float xPos = width; // -- Declare global xPos
 
void setup()
{
  size(600,200);
  fill(0);
  textSize(48);
 
  xPos = width;    // -- Initialise global xPos to right of sketch (600);
}
 
void draw()
{
  // float xPos = width; // -- Notice: declare and initialise a local xPos (causing variable shadowing)
  background(255);
  String message = "Hello again Creative Coders...";
  text(message,xPos,height/2);
 
  xPos = xPos - 1;  // -- Decrease the value of xPos by one on each redraw
}
