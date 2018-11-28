class Ball {
  PVector pos;
  PVector velocity;
  PVector acceleration;
  int size = 50;

  //CONSTRUCTOR
  Ball() {
    pos = new PVector(random(size/2, width-(size/2)), random(size/2, height-(size/2)));
    velocity = new PVector(random(1, 2), random(2, 5));
    acceleration = new PVector(0, .0981);
  }

  //METHODS

  //sidebounce
  void sideBounce() {
    if (pos.x < size/2 || pos.x > width-size/2) {
      velocity.x = -velocity.x;
    }
  }

    //bottom bounce
    void bottomBounce() {
      if (pos.y > height-size/2) {
        velocity.y = -velocity.y;
      }
    }

    //move
    void move(){
    pos.add(velocity); //x and y positions gets random number from above added to it
    velocity.add(acceleration); //y position gets .8 added to it every frame
    }

    //display
    void display() {
      ellipse(pos.x, pos.y, size, size);
    }
  }
