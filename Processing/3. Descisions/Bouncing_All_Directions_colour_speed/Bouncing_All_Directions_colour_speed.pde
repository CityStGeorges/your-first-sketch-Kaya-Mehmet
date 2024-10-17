float xPosition, xVelocity, originalXVelocity;
float yPosition, yVelocity, originalYVelocity;
float circleRadius;
int count = 0;

void setup()
{
  size(400, 300);
  fill(255, 177, 8);
  textSize(50);
 
  xPosition = width / 2;
  originalXVelocity = -2;
  yPosition = height / 2;
  originalYVelocity = -2;
  circleRadius = 50;
  
  xVelocity = originalXVelocity;
  yVelocity = originalYVelocity;
}
 
void draw()
{
  background(64);
  
  xPosition = xPosition + xVelocity;
  yPosition = yPosition + yVelocity;
  circle(xPosition, yPosition, circleRadius);
  
  float distance = dist(mouseX, mouseY, xPosition, yPosition);
  boolean mouseInCircle = (distance <= circleRadius / 2);
  
  if (mouseInCircle)
  {
    xVelocity = originalXVelocity * 2;
    yVelocity = originalYVelocity * 2;
  }
  else
  {
    xVelocity = originalXVelocity;
    yVelocity = originalYVelocity;
  }
  
  if (xPosition - circleRadius <= -25 || xPosition + circleRadius >= width + 25)
  {
    xVelocity = -xVelocity;
    originalXVelocity = -originalXVelocity;
    count += 1;
    if (count == 3)
    {
      fill(random(255), random(255), random(255));
      count = 0;
    }
  }
  if (yPosition - circleRadius <= -25 || yPosition + circleRadius >= height + 25)
  {
    yVelocity = -yVelocity;
    originalYVelocity = -originalYVelocity;
    count += 1;
    if (count == 3)
    {
      fill(random(255), random(255), random(255));
      count = 0;
    }
  }
}
