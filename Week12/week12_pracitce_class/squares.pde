class Square {
  PVector position;
  PVector velocity;
  PVector acceleration;
  int size = 25;

  //CONSTRUCTOR
  Square() {
    position = new PVector(size/2, random(50, 550));
    velocity = new PVector(random(1, 2), 0);
    acceleration = new PVector(.1, 0);
  }

  //METHODS
  void move() {
    position.add(velocity);
  }

  void accelerate() {
    velocity.add(acceleration);
  }

  void display() {
    rect(position.x, position.y, size, size);
  }
}
