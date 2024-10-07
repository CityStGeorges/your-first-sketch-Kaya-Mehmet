int seconds, minutes, hours;

void setup()
{
  size(600, 300);
  fill(255, 255, 255);
  textSize(70);
}

void draw()
{
  background(0);

  seconds = (frameCount / 60) % 60;
  minutes = (frameCount / (60 * 60)) % 60;
  hours = (frameCount/ (60 * 60 * 60));

  println(seconds);
  println(minutes);
  println(hours);

  String message = nf(hours, 2) + ":" + nf(minutes, 2) + ":" + nf(seconds, 2);
  textAlign(CENTER, CENTER);
  text(message, width/2, height/2);
}
