void setup()
{
  size(600, 400);
  noStroke();
}

void draw()
{
  background(0);

  
  var x = mouseX;
  var y = mouseY;

  fill(224, 36, 24);
  circle(x, y, 190);
  
  fill(255, 255, 255);
  circle(x, y, 120);
  
  fill(81, 60, 152);
  rect(x-150, y-15, 300, 40);

  fill(255, 255, 255);
  textSize(32.5);
  textAlign(CENTER, TOP);
  text("UNDERGROUND", x, y-8);
}
