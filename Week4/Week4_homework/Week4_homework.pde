// Plan: Drawing based on first homework. Draw houses all over green grass, and change color 
// of sky (time of day) depening on where your mouse is (left is day, right is night). 
// 1. Draw background (blue sky, green grass, yellow moon) 
// 2. create function (void) that draws house
// 3. create function (void) that draws person
// 4. create function (void) that draws stars
// 5. create function (float) that calculates distance from moon
// 6. use the function that calculates distance from moon in a map function that changes time
//    of day from day to night (left --> right)
// 7. create function (string) that prints "Welcome to our town!" 
// 8. create function (boolean) that says if you click on moon, stars appear
// 9. use lerp function? Maybe as moving person? I don't really get what it is.

int moonCenter;
int moonWidth;
int lawnHeight;
int calcDist;
String welcomeSentence;

void setup(){
  size(500, 500);
  background(70, 50, 255);
  moonCenter = int(width*.2);
  moonWidth = int(width*.15);
  lawnHeight = int(width*.3);
}

void draw(){
  
  //CHANGE SKY COLOR FROM LEFT --> RIGHT:
  int bgColor;
  bgColor = int(map(calcDist(moonCenter), 0, width, 175, 0));
  background(0, 0, bgColor);
  println(calcDist(moonCenter)); 
  
  //MOON:
  fill(255, 204, 0);
  ellipse(moonCenter, moonCenter, moonWidth, moonWidth); 
  
  //MAKING STARS APPEAR (TWINKLEY):
  //if(mousePressed == true) {
  //  fill(255, 204, 0);
  //  star(random(0, width), random(0, height), 5, 10, 5);
  //  star(random(0, width), random(0, height), 5, 10, 5);
  //  star(random(0, width), random(0, height), 5, 10, 5);
  //}
  
  //LAWN: 
  fill(130, 255, 50);
  rect(0, int(width-lawnHeight), width, lawnHeight);
  
  //DRAW HOUSES:
  house(width*.6, height*.65, 50, 50);
  house(width*.1, height*.7, 60, 60);
  house(width*.33, height*.77, 100, 100);
  house(width*.7, height*.9, 150, 150);
  
  //DRAW PERSON:
  person(300, 400, 40);
  
  //WELCOME SENTENCE:
  fill(255);
  //textMode(CENTER); IS THIS A THING? IT'S NOT DOING ANYTHING LOL
  text(welcomeSentence("Maya"), 100, 50);
  textSize(20);
  
  println(calcDist(moonCenter));
  println(isMouseOnMoon(calcDist));
}


//FUNCTION FOR CALCULATING DISTANCE FROM CENTER OF MOON; RETURNS FLOAT
float calcDist(float moonCenter){
  float dist = dist(mouseX, mouseY, moonCenter, moonCenter);
  return dist;
 
}

//BOOLEAN FOR WHETHER MOUSE IS ON MOON OR NOT
boolean isMouseOnMoon(float dist){
  if(dist < moonWidth/2){
    return true;
  }else {
    return false;
  }
}

//FUNCTION FOR CREATING HOUSE
void house(float x1, float y1, float houseWidth, float houseHeight){
  fill(200);
  rect(x1, y1, houseWidth, houseHeight);
  fill(255);
  rectMode(CENTER);
  rect(x1+(houseWidth/2), y1+(houseHeight*.75),houseWidth/3, houseHeight*.5);
  rectMode(CORNER);
  fill(255, 0, 0);
  triangle(x1, y1, x1+(houseWidth/2), y1-(houseHeight/2), x1+houseWidth, y1);
}

//FUNCTION FOR CREATING PERSON
void person(float headCenterX, float headCenterY, float personHeight) {
  fill(0);
  //head
  ellipse(headCenterX, headCenterY, 20, 20);
  //body
  line(headCenterX, headCenterY, headCenterX, headCenterY+personHeight);
  //arms
  line(headCenterX-20, headCenterY+(personHeight/2), headCenterX+20, headCenterY+(personHeight/2));
  //legs
  line(headCenterX, headCenterY+personHeight, headCenterX-20, headCenterY+personHeight+20);
  line(headCenterX, headCenterY+personHeight, headCenterX+20, headCenterY+personHeight+20);
}

//FUNCTION FOR DRAWING STAR; TAKEN FROM PROCESSING'S EXAMPLE OF A STAR!!!!
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

//FUNCTION FOR WELCOME SENTENCE
String welcomeSentence (String name){
  String a = "Welcome to our town, " + name + "!";
  return a;
}

//IF YOU CLICK ON MOON, STARS WILL APPEAR IN RANDOM LOCATIONS
// FOR SOME REASON THIS ISN'T WORKING.... LIKE IT'LL MAKE STARS APPEAR NO MATTER WHERE U CLICK.
// OKAY, SO I KIND OF LIKE IT BETTER IN THE DRAW LOOP BECAUSE IT TWINKLES, BUT STILL WANT TO KNOW
// WHY THIS DOESN'T WORK. 
void mousePressed(){
  if (isMouseOnMoon(calcDist) == true){
    fill(255, 204, 0);
    star(random(0, width), random(0, height), 5, 10, 5);
    star(random(0, width), random(0, height), 5, 10, 5);
    star(random(0, width), random(0, height), 5, 10, 5);
  }
}
