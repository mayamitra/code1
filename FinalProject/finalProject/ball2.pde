class Ball2 {
  PVector position;
  PVector velocity;
  PVector acceleration;
  int size;

  //CONSTRUCTOR
  Ball2() {
    position = new PVector(player2.position.x-24, player2.position.y);
    velocity = new PVector (random(-1, -5), random(0, 5));
    acceleration = new PVector(-.1, 0);

    size = 25; 
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
  
  //accelerate
  void accelerate(){
    velocity.add(acceleration);
  }
  
  //bounce walls
  void bounceY() {
    velocity.y = -velocity.y;
  }  

}
