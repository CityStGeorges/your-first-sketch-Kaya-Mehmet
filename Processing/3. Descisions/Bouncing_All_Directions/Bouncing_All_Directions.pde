float xPosition, xVelocity;  // -- Horizontal starting position on 'x' axis in coordinate space
float yPosition, yVelocity;  // -- Horizontal speed in x-direction
float circleRadius;
 
void setup()
{
  size(400, 300);
  fill(255, 177, 8);
  textSize(50);
 
  xPosition = width / 2;  // -- Initialise xPosition to centre of sketch
  xVelocity = -2;         // -- Initialise speed in x-direction to -2 (moving left)
  yPosition = height / 2;
  yVelocity = -1;
  circleRadius = 50;
}
 
void draw()
{
  background(64);
  
  xPosition = xPosition + xVelocity;  // -- Change position in x on each redraw by velocity in x
  yPosition = yPosition + yVelocity;
  circle(xPosition, yPosition, circleRadius);
  
  // Check if the left or right edge of the circle has touched the edges of the window
  if (xPosition - circleRadius <= -25 || xPosition + circleRadius >= width + 25)
  {
    xVelocity = -xVelocity; 
  }
  if (yPosition - circleRadius <= -25|| yPosition + circleRadius >= height + 25)
  {
    yVelocity = -yVelocity;
  }
}
