// ball position
float xPos, yPos;

// peg positions
float peg1X, peg1Y;
float peg2X, peg2Y;
float peg3X, peg3Y;

// ball velocity
float vx, vy;

// ball size
float radius;

// peg size
float pegRadius;

// is ball in play?
boolean inPlayMode;     // <-- boolean variable, can only hold values of TRUE and FALSE.

void setup()            // <-- Whatever commands we put in here will be executed once.
{
  size(500, 400);
  textSize(48);

  radius = 15;

  pegRadius = 10;

  peg1X = 250;
  peg1Y = 200;

  peg2X = 70;
  peg2Y = height - 24;

  peg3X = width - 24;
  peg3Y = 70;

  xPos = width - radius;
  yPos = height - radius;

  inPlayMode = false;   // <-- Initialise 'inPlayMode' to FALSE
}

// -- A new method
void mousePressed()
{
  if (inPlayMode)       // <-- Check whether this is TRUE, else change vx and vy, and set inPlayMode to TRUE
  {
    // -- do nothing, ball is already in play
  } 
  else
  {
    vx = estimateVel(mouseX, xPos);
    vy = estimateVel(mouseY, yPos);
    inPlayMode = true;
  }
}

void draw()
{
  background(255);

  fill(255, 0, 0);
  stroke(0);

  // -- Draw the pegs
  drawPeg(peg1X, peg1Y);
  drawPeg(peg2X, peg2Y);
  drawPeg(peg3X, peg3Y);

  // -- Lots of decisions that define the game!
  if (inPlayMode)
  {
    moveBall();

    // -- Draw ball
    drawBall();

    // -- Check rebounds
    bounceOffWalls();

    // -- Check collisions with pegs
    collision(peg1X, peg1Y);
    collision(peg2X, peg2Y);
    collision(peg3X, peg3Y);
  } 
  else
  {
    // -- Draw ball
    drawBall();

    drawAimingLine();
  }
}


void drawPeg(float pegX, float pegY)
{
  circle(pegX, pegY, 2 * pegRadius);
}


void drawAimingLine()
{
  stroke(0);
  line(xPos, yPos, mouseX, mouseY);
}


void moveBall()
{
  xPos = xPos + vx;
  yPos = yPos + vy;
}


void drawBall()
{
  noStroke();
  fill(0, 0, 255);
  circle(xPos, yPos, 2 * radius);
}


void bounceOffWalls()
{
  // -- Check rebounds against left and right walls
  if (xPos - radius < 0 || xPos + radius > width)
  {
    vx = -vx;
   }

  // -- Check rebounds against top and bottom walls
  if (yPos - radius < 0 || yPos + radius > height)
  {
    vy = -vy;
  }
}


void collision(float x, float y)
{
  if (dist(xPos, yPos, x, y) < radius + pegRadius)
  {
    fill(0);
    textAlign(CENTER, CENTER);
    text("GAME OVER!", width/2, height/2);
    frameRate(0);
  }
}


float estimateVel(float a, float b)
{
  float vel = (a - b) / 50;
  return vel;
}
