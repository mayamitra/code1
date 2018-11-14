class Ball {
  float x, y;
  float xSpeed, ySpeed;
  int size;

  //CONSTRUCTOR
  Ball(float _x, float _y) {
    x = _x;
    y = _y;

    size = 50;

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

  //bounce paddle
  void bounceP() {
    //gets faster each time it hits the paddle
    xSpeed *= -1.1;
    ySpeed *= -1.1;
  }

  //bounce walls
  void bounceY() {
    ySpeed = -ySpeed;
  }  
  void bounceX() {
    xSpeed = -xSpeed;
  }

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

  //restart 
  void reset() {
    //reset the ball
    x = width/2;
    y = height/2;
    //add new speed when ball resets
    xSpeed = random(-5, 5);
    if (xSpeed <= 2 || xSpeed >=0) {
      xSpeed = random(-5, 5);
    }
    ySpeed = random(-5, 5);
    if (ySpeed <= 2 || ySpeed >=0) {
      ySpeed = random(-5, 5);
    }
    //subtract score
  }
  
  
}
