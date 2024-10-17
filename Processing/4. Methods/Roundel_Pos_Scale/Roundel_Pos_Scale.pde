void setup()
{
  size(400, 400);
  noStroke();
}

void draw()
{
  background(192);

  // My inital approach
  // roundel(width/2, height/2, random(0,2));
  // roundel(100, 100, random(0,2));
  // roundel(300, 100, random(0,2));
  // roundel(100, 300, random(0,2));
  // roundel(300, 300, random(0,2));
  
  roundel(width/2, height/2, 1.0);
  roundel(100, 100, 0.5);
  roundel(300, 100, 1.5);
  roundel(100, 300, 0.8);
  roundel(300, 300, 2.0);
  
}

void roundel(float x, float y, float scale)
{
  fill(232, 138, 49);
  circle(x, y, 80 * scale);
  fill(73, 35, 203);
  circle(x, y, 60 * scale);
  fill(255);
  circle(x, y, 40 * scale);
  fill(255, 0, 0);
  circle(x, y, 20 * scale);
}
