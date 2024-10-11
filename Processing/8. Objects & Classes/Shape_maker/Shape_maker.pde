boolean drawCircle = true;
PVector p;
ArrayList<PVector> clickPoint = new ArrayList<PVector>();

void setup()
{
  size(800, 800);
  noStroke();
  p = new PVector(mouseX, mouseY);
}

void draw()
{
  fill(255, 8);
  rect(0, 0, width, height);

  p.x = mouseX;
  p.y = mouseY;

  fill(255, 0, 0, 128);
  beginShape();
  for (PVector v : clickPoint)
  {
    vertex(v.x, v.y);
    println(v.x, v.y);
  }
  // vertex(120, 300);
  endShape(CLOSE);

  if (drawCircle)
  {
    fill(32, 128);
    circle(p.x, p.y, 20);
  }
  drawCircle = false;
  println(clickPoint.size());
}

void mouseClicked()
{
  clickPoint.add(new PVector (mouseX, mouseY));
}

void mouseMoved()
{
  drawCircle = true;
}
