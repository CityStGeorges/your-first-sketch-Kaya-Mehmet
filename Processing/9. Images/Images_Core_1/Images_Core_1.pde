// -- Declare a new PImage called 'i' as a global variable:
// loadImage(), image(), get(), set(), save()

PImage i;                 
 
void setup () {
    size(640,853);
     
    // -- Load an image into the PImage object from your sketch folder:
    i = loadImage("Tree.jpg");
}
 
void draw() {
    // -- Use the 'image()' method to draw the image on the canvas (60 times per second - overkill!):
    image(i,0,0);
}
