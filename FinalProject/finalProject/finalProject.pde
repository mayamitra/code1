// Two aliens throw fireballs at each other. 
//Lives start at 10 and go down each time a player is hit.

import ddf.minim.*;
Minim minim;
AudioPlayer player;

import processing.sound.*;
PFont font;

ArrayList <Ball1> balls1; 
ArrayList <Ball2> balls2;

int lives1;
int lives2;

import processing.sound.*;

SoundFile file;

Character player1;
Character player2;

Star stars[] = new Star[20];

PVector playPos [] = new PVector [2];

boolean hit1, hit2;

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

  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(0, width), random(0, height), 5, 10);
  }

  file = new SoundFile(this, "boomSound.mp3");
  minim = new Minim(this);
  player = minim.loadFile("spaceMusic.mp3");
  player.play();
  font = createFont("Bungee-Regular.otf", 15);
}

void draw() {
  //BACKGROUND
  background(0, 0, 75);
  for (int i=0; i<stars.length; i++) {
    stars[i].display();
  }  

  //FOR CHARACTER1 AND BALL1
  player1.up1();
  player1.down1();
  player1.display(color(0, 0, 255));

  //falling off screen
  if (player1.position.y > height) {
    player1.position.y = 0;
  }
  if (player1.position.y < 0) {
    player1.position.y = height;
  }

  //make the color of the p2's shirt change if p2 gets hit
  if (hit1 == true) {
    //player2.display(color(255, 0, 0));
    player2.shirtChange();
  }

  for (int i=0; i<balls1.size(); i++) {
    Ball1 b1 = balls1.get(i);
    b1.display();
    b1.move();
    b1.accelerateSlow();

    if (b1.position.y >= height-(b1.size/2) || b1.position.y < b1.size/2) {
      b1.bounceY();
      b1.accelerate();
    }

    //need to check if the ball position is within the bounds of the character
    if (b1.position.x >= player2.position.x-24 &&
      b1.position.x <= player2.position.x+24 &&
      b1.position.y >= player2.position.y-18 &&
      b1.position.y <= player2.position.y+107) {
      lives2 = lives2-=1;
      balls1.remove(i);
      //player2.shirtChange();
      //player2.display(color(255,0,0));
      hit1 = true;
      file.play();
    }
  }

  //Score of Character 2, based on Ball 1
  String printScore1 = ("Lives: " + lives2);
  textFont(font);
  fill(255);
  textSize(20);
  text(printScore1, 670, 20);

  //If Character 1's lives1 = 0, print "Game Over"
  if (lives1 <= 0) {
    String player1Loss = ("Game over! Player 2 Wins");
    textFont(font);
    fill(255);
    textSize(50);
    text(player1Loss, 30, 100);
  }

  //FOR CHARACTER2 AND BALL2
  player2.up2();
  player2.down2();
  player2.display(color(0, 0, 255));

  //falling off screen
  if (player2.position.y > height) {
    player2.position.y = 0;
  }
  if (player2.position.y < 0) {
    player2.position.y = height;
  }
  
  //make the color of the p1's shirt change if p1 gets hit
  if (hit2 == true) {
    //player1.display(color(255, 0, 0));
    player1.shirtChange();
  }

  for (int i=0; i<balls2.size(); i++) {
    Ball2 b2 = balls2.get(i);
    b2.display();
    b2.move();
    b2.accelerateSlow();


    if (b2.position.y >= height-(b2.size/2) || b2.position.y < b2.size/2) {
      b2.bounceY();
      b2.accelerate();
    }

    //need to check if the ball position is within the bounds of the character   
    if (b2.position.x <= player1.position.x+24 && 
      b2.position.x >= player1.position.x-24 &&
      b2.position.y >= player1.position.y-18 &&
      b2.position.y <= player1.position.y+107) {
      lives1 = lives1-=1;
      balls2.remove(i);
      //player1.shirtChange();
      hit2 = true;
      file.play();
    }
  }

  //Score of Character 1, based on Ball 2
  String printScore2 = ("Lives: " + lives1);
  textFont(font);
  fill(255);
  textSize(20);
  text(printScore2, 20, 20);

  //If Character 2's lives2 = 0, print "Game Over"
  if (lives2 <= 0) {
    String player2Loss = ("Game over! Player 1 Wins");
    textFont(font);
    fill(255);
    textSize(50);
    text(player2Loss, 30, 100);
  }
}

void keyPressed() {
  //CREATING BALL1
  if (key == 'D' || key == 'd') {
    balls1.add(new Ball1());
  }

  //CREATING BALL2
  if (key == CODED) {
    if (keyCode == LEFT) {
      balls2.add(new Ball2());
    }
  }
}
