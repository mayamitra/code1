int ySpeed;
int yPosition;

void setup() {
  size(600, 600);
  yPosition = height/2;
}

void draw() {
  ySpeed = 5;

  if (yPosition >= height){
    yPosition = 0;
  }

  ellipse(width/2, yPosition, 100, 100);
  yPosition = yPosition + ySpeed;
}
