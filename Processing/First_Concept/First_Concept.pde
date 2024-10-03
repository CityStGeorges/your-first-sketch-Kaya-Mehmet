void setup()
{
  size(600, 400);
  background(50, 50, 50);
  fill(50, 50, 50);
  textSize(32);
}

void draw()
{
  //background(225, 0, 0);
  
  if (mousePressed) {
    stroke(32);
    text(frameCount, 120, 150);
    fill(0, 0, 250);
    ellipse(mouseX, mouseY, 120, 80);
  } else {
      setup();
    }
}
