//Ball myBall;

ArrayList <Ball> balls; //name the array list here
//COULD ALSO BE LIKE THIS INSTEAD OF SEPARATED BEFORE AND IN SETUP:
//ArrayList <Ball> balls = new ArrayList<Ball>();

void setup() {
  size(600, 600);

  //myBall = new Ball();

  balls = new ArrayList<Ball>(); //declare the array here
}

void draw() {
  background(0);
  //myBall.display();
  //myBall.move();
  //myBall.sideBounce();
  //myBall.bottomBounce();

  for (int i=0; i<balls.size(); i++) {
    Ball b = balls.get(i);
    b.display();
    b.move();
    b.sideBounce();
    b.bottomBounce();

    if (b.pos.y < 0) { //b is the specifc ball, so calling a specific position of a ball
      balls.remove(i); //balls is the arraylist, so it removes a ball b
    }

    //calculate the distance between our mouse and our instance b
    float d = dist(mouseX, mouseY, b.pos.x, b.pos.y);
    //see if our mouse is pressed
    if (d<=b.size/2 && mousePressed) {
      balls.remove(i);
    }
  }

  if (balls.size() <= 10) { //if there are 10 or less balls, add one every 30 frames
    if (frameCount % 30 == 0) {
      balls.add(new Ball());
    }
  }
}
