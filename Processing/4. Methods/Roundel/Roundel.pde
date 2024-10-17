void setup()
{
  size(400, 400);
  noStroke();
}

void draw()
{
  background(192);
  roundel();  // <-- or whatever the method is called
}

void roundel()
{
  fill(232, 138, 49);
  circle(width/2, height/2, 80);
  fill(73, 35, 203);
  circle(width/2, height/2, 60);
  fill(255);
  circle(width/2, height/2, 40);
  fill(255, 0, 0);
  circle(width/2, height/2, 20);
}
