void setup() {
  size(800, 500);
  background(106, 51, 86);
}

void draw() {
  fill(140, 194, 234);
  
  // Move the arc lower and centered horizontally
  arc(150, 100, 100, 100, 0, PI+QUARTER_PI, PIE);
  
  // Center the circle horizontally and move it down a bit
  circle(400, 100, 100);
  
  // Center the ellipse horizontally and move it down
  ellipse(650, 100, 100, 50);
  
  // Adjust line position
  line(150, 150, 150, 200);
  
  // Move point closer to the line
  point(400, 160);
  
  // Adjust quad position
  quad(600, 150, 650, 150, 580, 170, 620, 179);
  
  // Rectangular shape - move it lower
  rect(150, 250, 100, 100, 28);
  
  // Move square lower and center it
  square(400, 250, 120);
  
  // Adjust triangle position
  triangle(600, 275, 520, 290, 660, 290);
}
