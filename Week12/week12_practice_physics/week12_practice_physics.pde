Ball ball1 = new Ball();
Ball ball2 = new Ball();
Ball ball3 = new Ball();


void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  ball1.display();

  ball2.display();
  ball2.move();

  ball3.display();
  ball3.move();
  ball3.accelerate();

}
