//player
//ball
//collision detection
//score
//lives
//timer

int score;

Paddle player1;
Ball ball;

float startTime;
float ellapsedTime;


PVector playPos [] = new PVector [2];

void setup() {
  size(800, 600);
  playPos[0] = new PVector (width-100, height/2);
  player1 = new Paddle(playPos[0]);
  ball = new Ball(width/2, height/2);

  //startTime
  //millis when you start the sketch. Because it's in the setup, it only updates in the beginning
  //of the sketch
  startTime = millis();
}

void draw() {
  background(0);
  player1.update();
  player1.display();

  ball.display();
  ball.move();

  if (ball.y >= height-(ball.size/2) || ball.y < ball.size/2) {
    ball.bounceY();
  }

  if (ball.x <= ball.size/2) {
    ball.bounceX();
  }

  if (ball.x >= width-(ball.size/2)) {
    ball.reset();
  }

  //need to check if the ball position is within the bounds of the paddle
  if (ball.x >= player1.position.x-(5+(ball.size/2)) && 
    ball.y >= player1.position.y-(player1.rectSize/2) &&
    ball.y <= player1.position.y+(player1.rectSize/2)) {
    ball.bounceP();
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
  
  if ((60-ellapsedTime)<=0){
    startTime = millis();
    ball.x = width/2;
    ball.y = height/2;
    score = 0;
  }
}
