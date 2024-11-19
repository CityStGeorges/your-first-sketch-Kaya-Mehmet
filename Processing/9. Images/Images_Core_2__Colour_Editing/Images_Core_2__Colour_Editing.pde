int lineWidth;
color lineColour;
PImage myPic;

void setup() {
  
  size(640,853);
  
  lineWidth = 5;
  lineColour = color(255,128);
  myPic = loadImage("Tree.jpg");
  
 image(myPic, 0, 0);
 
 strokeWeight(lineWidth);
 stroke(lineColour);
 fill(lineColour);
}

void draw() {
  if (mousePressed) {
    if (mouseButton == RIGHT) {
      lineColour = myPic.get(mouseX, mouseY);
      stroke(lineColour);
      fill (lineColour);
    } else {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
}
