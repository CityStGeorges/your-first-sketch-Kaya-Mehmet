color leafColour, trunkColour;

void setup()
{
  size(400, 400);
  background(100);
}

void draw()
{
  background(250);
  for (int row=0; row<10; row = row+1)
  {  // <-- commands issued in these braces happen 10 times
    for (int col=0; col<10; col = col+1)
    { // <-- commands issued in these braces happen 100 times
      // fill(random(250), random(250), random(250), random(250));
      fill(255, 128, 32, 32);
      
      float x = 20 + col*40;
      float y = 20 + row*60;
      float d = dist(mouseX, mouseY, x, y);
      float r = 50;
      
      if (d < r)
      {
        fill(255, 0, 0, 64);
      }
      circle(x, y, 2*r);
    }
  }
  println("distance is", dist(20, 20, 80, 20));
}
