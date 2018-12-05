int score;

Paddle player1;

//Ball ball;
ArrayList <Ball> balls = new ArrayList<Ball>();

float startTime;
float ellapsedTime;


PVector playPos [] = new PVector [2];

void setup() {
  size(800, 600);
  playPos[0] = new PVector (width-100, height/2);
  player1 = new Paddle(playPos[0]);
  //ball = new Ball(width/2, height/2);

  //startTime
  //millis when you start the sketch. Because it's in the setup, it only updates in the beginning
  //of the sketch
  startTime = millis();
}

void draw() {
  background(0);
  player1.update();
  player1.display();

  for (int i=0; i<balls.size(); i++) {
    Ball b = balls.get(i);
    b.display();
    b.move();

    if (b.y >= height-(b.size/2) || b.y < b.size/2) {
      b.bounceY();
    }

    if (b.x <= b.size/2){
      b.bounceX();
    }
    
    if(b.x >= width){
      balls.remove(i);
    }

    //need to check if the ball position is within the bounds of the paddle
    if (b.x >= player1.position.x-(5+(b.size/2)) && 
      b.y >= player1.position.y-(player1.rectSize/2) &&
      b.y <= player1.position.y+(player1.rectSize/2)) {
      b.bounceP();
      score = score+=1;
    }

    //Score
    String printScore = ("Score: " + score);
    text(printScore, 20, 20);

    //ellapsed == startTime - current second 
    float ellapsedTime = (millis() - startTime)/1000;
    println(ellapsedTime);
    //Timer
    text(60-ellapsedTime, 20, 100);

    if ((60-ellapsedTime)<=0) {
      startTime = millis();
      b.x = width/2;
      b.y = height/2;
      score = 0;
    }
  }

  if (balls.size() <= 10) {
    if (frameCount % 30 == 0) {
      balls.add(new Ball());
    }
  }
}
