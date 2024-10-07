float x, y;

void setup() {
  size(200, 300);

  fill(255);
  
  float circleRadius = 50;
  float rectWidth = 130;

  x = random(rectWidth / 2, width - rectWidth / 2);  
  y = random(circleRadius / 2, height - circleRadius / 2);
}

void draw() {
  background(128);

  float circleRadius = 50;
  float rectWidth = 130;
  float rectHeight = 20;
  float rectX = x - rectWidth / 2;
  float rectY = y - rectHeight / 2;

  boolean mouseInRectangle = (mouseX > rectX && mouseX < rectX + rectWidth 
  && mouseY > rectY && mouseY < rectY + rectHeight);

  float distance = dist(mouseX, mouseY, x, y);
  boolean mouseInCircle = (distance <= circleRadius / 2);

  if (!mouseInRectangle && mouseInCircle) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  circle(x, y, circleRadius);

  if (mouseInRectangle) {
    fill(0, 0, 255);
  } else {
    fill(255);
  }

  rect(rectX, rectY, rectWidth, rectHeight);
}
