class Particle {
  //DATA
  PVector position;
  PVector velocity;
  PVector gravity;

  color c;
  float size;

  //CONSTRUCTOR
  Particle () {
    //sets our x and y position to pvector, because this will not change. 
    position = new PVector(mouseX, mouseY);

    //sets velocity and gravity like this because it won't change 
    velocity = new PVector (random(-5, 5), random(1, 5));

    gravity = new PVector (0, .1);
  }

  //METHODS
  void fall() {
    //means that position = position+velocity 
    position.add(velocity);
  }

  void gravity() {
    velocity.add(gravity);
  }

  void bounce() {
    //reverse direction
    //multiplying it by a decmial makes it look more natural (bounce decreases each time)
    //velocity.y = -(velocity.y*.6);
    velocity.y = -velocity.y;
  }

  void sideBounce() {
    //reverse direction 
    velocity.x = -velocity.x;
  }

  void display(float size) {
    size = map(position.y, 0, height, 10, 50);
    noStroke();
    c = color(map(position.x, 0, width, 0, 255), 
      map(position.y, 0, width, 100, 255), 
      174);
    fill(c);
    ellipse(position.x, position.y, size, size);
  }
}
