PVector position;
float orbitSize;
float theta;
int inc = 1;

void setup() {
  size(500, 500);
  position = new PVector(width/2, 0);
  frameRate(100);
}

void draw() {
  background(255);
  //theta +=.1;
  orbitSize = 100;


  if (theta <= 0) { 
    inc += 1;
  }

  if (theta >= 180) {
    inc -= 1;
  } 

  theta += inc;

  println(theta);

  position.x = width/2 + orbitSize*cos(radians(theta));
  position.y = height/2 + orbitSize*sin(radians(theta));

  line(width/2, 0, position.x, position.y);

  ellipse(position.x, position.y, 25, 25);
}
