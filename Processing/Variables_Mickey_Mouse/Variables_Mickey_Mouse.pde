void setup()
{
  size(800, 500);
}

void draw()
{
  background(20);

  float centreX = width/2;
  float centreY = height/2;
  float faceSize = 220;
  float earSize = 200;

  fill(0);
  ellipse(centreX, centreY, faceSize, faceSize);
  ellipse(centreX-100, centreY-70, earSize, earSize);
  ellipse(centreX+100, centreY-70, earSize, earSize);

  fill(30);
  circle(centreX-70, centreY-40, 100);
  circle(centreX+70, centreY-40, 100);

  fill(255, 0, 0);
  arc(centreX, centreY+30, 100, 100, 0, PI, CHORD);
}
