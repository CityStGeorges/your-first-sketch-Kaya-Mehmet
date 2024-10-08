float xBlue, xRed, xGreen, xPurple;
float yBlue, yRed, yGreen, yPurple;

void setup()
{
  size(600, 400);
  xBlue = xRed = xGreen = xPurple = width/2;
  yBlue = yRed = yGreen = yPurple = height/2;
}

void draw()
{
  color blue = color(60, 47, 180);
  color red = color(219, 9, 23);
  color green = color(77, 234, 78);
  color purple = color(161, 42, 198);

  fill(blue);
  ellipse(xBlue-=1, yBlue-=1, 60, 60);

  fill(red);
  ellipse(xRed+=1, yRed-=1, 60, 60);

  fill(green);
  ellipse(xGreen-=1, yGreen+=1, 60, 60);

  fill(purple);
  ellipse(xPurple+=1, yPurple+=1, 60, 60);
}
