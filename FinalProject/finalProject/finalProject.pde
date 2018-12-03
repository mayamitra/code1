// Kind of like table tennis but with two player characters throwing fireballs at each other
// Score board

//MAYA! SWITCH TO ARRAYLIST :)

//player
//ball
//collision detection
//score
//lives
//timer

int lives1;
int lives2;

Character player1;
Character player2;
Ball ball1;
Ball ball2;

float startTime;
float ellapsedTime;


PVector playPos [] = new PVector [2];

void setup() {
  size(800, 600);
  lives1 = 5;
  lives2 = 5;
  playPos[0] = new PVector (100, height/2);
  playPos[1] = new PVector (width-100, height/2);
  player1 = new Character(playPos[0]);
  player2 = new Character(playPos[1]);
  ball1 = new Ball(player1.position.x-24, player1.position.y);
  ball2 = new Ball(player2.position.x+24, player2.position.y);
}

void draw() {
  background(0);
  player1.up1();
  player1.down1();
  player1.display();

  player2.up2();
  player2.down2();
  player2.display();

  ball1.display();
  ball1.move();

  if (ball1.y >= height-(ball1.size/2) || ball1.y < ball1.size/2) {
    ball1.bounceY();
  }

  //need to check if the ball position is within the bounds of the character
  if (ball1.x >= player2.position.x-(5+(ball2.size/2)) && 
    ball1.y >= player2.position.y-(114/2) &&
    ball1.y <= player2.position.y+(114/2)) {
    lives1 = lives1-=1;
    //ball.remove(); //MAKE THIS A THING WITH ARRAYLIST
  }

  //Score
  String printScore = ("Lives: " + lives1);
  text(printScore, 20, 20);
}
