float x, y;
float x1, y1;
float theta = 0;
int radius = 25;

void setup() {
  background(0);
  size(500, 500);
  frameRate(10);
}

void draw() {
  background(0);

  //theta needs to be constantly increasing in order for it to oscillate
  theta += 5;

  pushMatrix();
  translate(width/2, height/2);
  //putting radians(theta) changes it into degrees... which makes no sense
  //rotating it by theta makes it in line with the oscillation 
  rotate(radians(theta));
  //one coordinate needs stay (in the direction in which it's moving)
  x ++;
  //the other coordinate needs to oscillate in sin or cos (sin bc it's y)
  //multiply theta by the size of the oscillation that you want (otherwise it would be 
  //between -1 and 1). Also known as orbitSize in our other code. Makes the wave higher/shorter
  // +200 (or whatever other number) is the y offset
  y = (sin(theta)*25) + 200;

  //put 0 as the x value, because if you put an increasing x it spirals out
  ellipse (0, y, radius, radius);
  popMatrix();

  x1 = (cos(theta)*100) + width/2;
  y1 = (sin(theta)*100) + height/2;
  
  //orbits normally around middle ellipse
  ellipse(x1, y1, 20, 20);

  //center ellipse
  ellipse(width/2, height/2, 100, 100);
}
