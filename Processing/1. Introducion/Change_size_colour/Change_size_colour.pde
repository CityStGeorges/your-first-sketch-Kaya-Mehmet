void setup()
{
  size(256, 256); 
  noStroke();
  rectMode(CENTER);
}

void draw()
{
  background(51); 
  fill(mouseX, mouseY, mouseY/2);
  rect(mouseX, height/2, mouseY/2+10, mouseY/2+10);
  fill(mouseY, mouseX, mouseX/2);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  rect(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);
}
