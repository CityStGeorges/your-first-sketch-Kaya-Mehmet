void setup()
{
  size(400, 400);
  noStroke();
}
 
void draw()
{
  // Assign colours
  color skyColour    = color(157, 238, 247);
  color groundColour = color(156, 245, 170);
  color leafColour   = color(82, 144, 97);
  color trunkColour  = color(95, 57, 26);
 
  background(skyColour);
  fill(groundColour);
  rect(0, height/2, width, height/2);
 
  float treeX = 100;
  float treeY = 180;
 
  // Draw first tree
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
 
  // Draw second tree to the right and down a bit
  treeX = treeX + 100;
  treeY = treeY + 30;
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
 
  // Draw third tree to the right and up a bit
  treeX = treeX + 100;
  treeY = treeY - 30;
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
  
  //for (int i=0; i<3; i++)
  //{
  //  treeX = treeX + 100;
  //  treeY = treeY + 30;
  //  fill(trunkColour);
  //  rect(treeX, treeY, 20, 70);
  //  fill(leafColour);
  //  ellipse(treeX+10, treeY-30, 70, 90);
  //}
}
