float x, y;
float circleRadius;
int seconds;
boolean gameOver;

void setup()
{
  size(600, 400);
  fill(0);
  textSize(48);
  textAlign(CENTER);
  noStroke();
  
  x = random(500);
  y = random(300);
  circleRadius = 60;
  gameOver = false;
}
 
void draw()
{
  seconds = (frameCount / 60) % 60;
  
  background(255);
  
  if (gameOver)
  {
    circle(x, y, circleRadius);
    return;
  }
  
  float distance = dist(mouseX, mouseY, x, y);
  boolean mouseInCircle = (distance <= circleRadius / 2);
  
  if (mouseInCircle)
  {
    fill(0);
    String message = "YOU WIN";
    text(message, width / 2, height / 2);
    gameOver = true;
    noLoop();
  }
  
  if (seconds > 10)
  {
    fill(0);
    String message = "YOU LOSE";
    text(message, width / 2, height / 2);
    gameOver = true;
    noLoop();
  }
  
  if (gameOver)
  {
    circle(x, y, circleRadius);
  }
}
