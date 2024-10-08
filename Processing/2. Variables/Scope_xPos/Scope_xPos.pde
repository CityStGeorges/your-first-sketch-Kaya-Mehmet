float xPos;        // Declare xPos with sketch-wide scope.

void setup()
{
  size(600, 200);
  fill(0);
  textSize(48);

  xPos = width;    // Initialise xPos to right of sketch (600);
}

void draw()
{
  background(255);
  String message = "Hello again Creative Coders...";
  text(message, xPos, height/2);

  xPos = xPos - 1;  // Decrease the value of xPos by one on each redraw
}
