float xPosition;  // -- Horizontal starting position on 'x' axis in coordinate space
float xVelocity; // -- Horizontal speed in x-direction
float circleRadius;
 
void setup()
{
  size(400,300);
  fill(255,177,8);
  textSize(48);
 
  xPosition = width/2;  // -- Initialise xPosition to centre of sketch
  xVelocity = -2; // -- Initialise speed in x-direction to -2 (moving left)
  circleRadius = 50;
}
 
void draw()
{
  background(64);
  
  xPosition = xPosition + xVelocity;  // -- Change position in x on each redraw by velocity in x
  circle(xPosition, height/2, circleRadius);
  println(xPosition);
  
  if (xPosition );
  {
   xVelocity = -xVelocity; 
  }
}
