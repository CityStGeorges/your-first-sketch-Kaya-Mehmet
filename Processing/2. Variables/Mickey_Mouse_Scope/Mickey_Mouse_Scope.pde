// Sketch-wide variable declarations
float faceSize;
float earSize;

void setup()
{
  size(400, 400);
  fill(0);
  faceSize = 18;    // Variable initialisation.
  earSize = 12;
}

void draw()
{
  background(255);
  float centreX = width / 2;
  float centreY = height / 2;

  ellipse(centreX, centreY, faceSize, faceSize);
  ellipse(centreX-faceSize/3, centreY-faceSize/3, earSize, earSize);
  ellipse(centreX+faceSize/3, centreY-faceSize/3, earSize, earSize);

  faceSize = faceSize * 1.01;   // -- allocate to faceSize its current value multiplied by 1.01
  earSize = earSize * 1.01;     // -- allocate to earSize its current value multiplied by 1.01
}
