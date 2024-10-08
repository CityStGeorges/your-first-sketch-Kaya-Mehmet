float offset;

void setup()
{
  size(600, 400);
  offset = 0;
}

void draw()
{ 
  color blue = color(60, 47, 180);
  color red = color(219, 9, 23);
  color green = color(77, 234, 78);
  color purple = color(161, 42, 198);

  offset += 1;

  fill(blue);
  ellipse(width/2 + offset, height/2 + offset, 60, 60);

  fill(red);
  ellipse(width/2 - offset, height/2 + offset, 60, 60);

  fill(green);
  ellipse(width/2 + offset, height/2 - offset, 60, 60);

  fill(purple);
  ellipse(width/2 - offset, height/2 - offset, 60, 60);
}
