void setup()
{
  size(400, 400);
  noStroke();
}

void draw()
{
  background(192);
  // Call the roundel method with different x, y positions
  roundel(width/2, height/2);
  roundel(100, 100);
  roundel(300, 100);
  roundel(100, 300);
  roundel(300, 300);
}

void roundel(float x, float y)
{
  fill(232, 138, 49);
  circle(x, y, 80);
  fill(73, 35, 203);
  circle(x, y, 60);
  fill(255);
  circle(x, y, 40);
  fill(255, 0, 0);
  circle(x, y, 20);
}
