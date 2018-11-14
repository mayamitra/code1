class Person {
  //data
  float personHeight;

  PVector position;
  PVector velocity;
  PVector acceleration;

  //constructor
  Person() {
    position = new PVector (mouseX, mouseY);
    velocity = new PVector(random(1.5, 3), 0);
    acceleration = new PVector(random(.1, .5), 0);
  }

  //methods
  void move() {
    position.add(velocity);
  }

  void accelerate() {
    velocity.add(acceleration);
  }

  void display(float personHeight) {
    fill(0);
    //head
    ellipse(position.x, position.y, 20, 20);
    //body
    line(position.x, position.y, position.x, position.y+personHeight);
    //arms
    line(position.x-20, position.y+(personHeight/2), position.x+20, position.y+(personHeight/2));
    //legs
    line(position.x, position.y+personHeight, position.x-20, position.y+personHeight+20);
    line(position.x, position.y+personHeight, position.x+20, position.y+personHeight+20);
  }

}
