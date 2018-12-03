class Ball {
  float x, y;
  float xSpeed, ySpeed;
  int size;

  //CONSTRUCTOR
  Ball(float _x, float _y) {
    x = _x;
    y = _y;

    size = 10;

    xSpeed = random(-5, 5);
    if (xSpeed <= 2 || xSpeed >=0) {
      xSpeed = random(-5, 5);
    }
    ySpeed = random(-5, 5);
    if (ySpeed <= 2 || ySpeed >=0) {
      ySpeed = random(-5, 5);
    }
  }
  
  //METHODS

  //display
  void display() {
    fill(255);
    ellipse(x, y, size, size);
  }

  //move
  void move() {
    x += xSpeed;
    y += ySpeed;
  }
  
  //bounce walls
  void bounceY() {
    ySpeed = -ySpeed;
  }  
  void bounceX() {
    xSpeed = -xSpeed;
  }
 
}
