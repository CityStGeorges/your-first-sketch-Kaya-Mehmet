void setup()
{
  size(400, 300);
  fill(203, 118, 122);
}

void draw()
{
  background(255, 236, 149);

  // if the mouse on the left
  if (mouseX < width/2)
  {
    ellipse(mouseX, mouseY, 80, 80);
  } 
  else
  {
    rect(mouseX, mouseY, 80, 80);
  }
}
