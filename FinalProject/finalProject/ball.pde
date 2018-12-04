class Ball1 {
  PVector position;
  PVector velocity;
  PVector acceleration;
  int size;

  //CONSTRUCTOR
  Ball1() {
    position = new PVector(player1.position.x+24, player1.position.y);
    velocity = new PVector (random(2, 3), random(2, 3));
    acceleration = new PVector(.1, 0);
    size = 15; 
  }
  
  //METHODS

  //display
  void display() {
    //flash like fireball
    fill(255, random(0, 255), 0);
    ellipse(position.x, position.y, size, size);
  }

  //move
  void move() {
    position.add(velocity);
  }
  
  //bounce walls
  void bounceY() {
    velocity.y = -velocity.y;
  }  
  void bounceX() {
    velocity.x = -velocity.x;
  }
 
}
