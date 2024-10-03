void setup()
{
  size(600, 400);
  background(0);
  noStroke();
}

void draw()
{
  fill(224, 36, 24);
  circle(300, 200, 380);
  fill(255, 255, 255);
  circle(300, 200, 240);
  fill(81, 60, 152);
  rect(0, 165, 600, 80);

  fill(255, 255, 255);
  textSize(75);
  textAlign(CENTER, TOP);
  text("UNDERGROUND", 300, 180);
}
