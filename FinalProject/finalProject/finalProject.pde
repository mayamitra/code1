// Two players throw fireballs at each other. Lives start at 10 and go down each time a player is hit.
// Score board
//player
//ball
//collision detection
//score
//lives

ArrayList <Ball1> balls1; 
ArrayList <Ball2> balls2;

int lives1;
int lives2;

Character player1;
Character player2;

Star stars[] = new Star[20];

PVector playPos [] = new PVector [2];

void setup() {
  size(800, 600);
  noStroke();

  balls1 = new ArrayList<Ball1>();
  balls2 = new ArrayList<Ball2>();

  lives1 = 10;
  lives2 = 10;
  
  playPos[0] = new PVector (100, height/2);
  playPos[1] = new PVector (width-100, height/2);
  player1 = new Character(playPos[0]);
  player2 = new Character(playPos[1]);
    
  for (int i=0; i<stars.length; i++){
    stars[i] = new Star(random(0, width), random(0, height), 5, 10);
  }
}

void draw() {
  //BACKGROUND
  background(0, 0, 75);
  for (int i=0; i<stars.length; i++){
    stars[i].display();
  }
  
  //FOR CHARACTER1 AND BALL1
  player1.up1();
  player1.down1();
  player1.display();

  for (int i=0; i<balls1.size(); i++) {
    Ball1 b1 = balls1.get(i);
    b1.display();
    b1.move();

    if (b1.position.y >= height-(b1.size/2) || b1.position.y < b1.size/2) {
      b1.bounceY();
    }

    //need to check if the ball position is within the bounds of the character
    if (b1.position.x >= player2.position.x-24 &&
      b1.position.x <= player2.position.x+24 &&
      b1.position.y >= player2.position.y-(114/2) &&
      b1.position.y <= player2.position.y+(114/2)) {
      lives2 = lives2-=1;
      balls1.remove(i);
    }
  }

  //Score of Character 2, based on Ball 1
  String printScore1 = ("Lives: " + lives2);
  fill(255);
  textSize(20);
  text(printScore1, 700, 20);
  
  //If Character 1's lives1 = 0, print "Game Over"
  if (lives1 <= 0) {
    String player1Loss = ("Game over! Player 2 Wins");
    fill(255);
    textSize(50);
    text(player1Loss, 100, 100);
  }

  //FOR CHARACTER2 AND BALL2
  player2.up2();
  player2.down2();
  player2.display();

  for (int i=0; i<balls2.size(); i++) {
    Ball2 b2 = balls2.get(i);
    b2.display();
    b2.move();

    if (b2.position.y >= height-(b2.size/2) || b2.position.y < b2.size/2) {
      b2.bounceY();
    }

    //need to check if the ball position is within the bounds of the character   
    if (b2.position.x <= player1.position.x+24 && 
      b2.position.x >= player1.position.x-24 &&
      b2.position.y >= player1.position.y-(114/2) &&
      b2.position.y <= player1.position.y+(114/2)) {
      lives1 = lives1-=1;
      balls2.remove(i);
    }
  }

  //Score of Character 1, based on Ball 2
  String printScore2 = ("Lives: " + lives1);
  fill(255);
  textSize(20);
  text(printScore2, 20, 20);
  
  //If Character 2's lives2 = 0, print "Game Over"
  if (lives2 <= 0) {
    String player2Loss = ("Game over! Player 1 Wins");
    fill(255);
    textSize(50);
    text(player2Loss, 100, 100);
  }
}

//CREATING BALL1
void mousePressed() {
  balls1.add(new Ball1());
}

//CREATING BALL2
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      balls2.add(new Ball2());
    }
  }
}
