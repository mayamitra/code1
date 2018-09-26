//boolean to detect if mouse is pressed
//if boolean true, draw ellipse where mosuseX + mouseY
//change the size of my drawing ellipse when up arrow key is clicked

int size;
int x, y;
color circleColor;

void setup(){
  size(500,500);
  size = 10;
  //if you don't want outline around circle, use noStroke
  noStroke();
  circleColor = color(random(0, 255), random(0, 255), random(0, 255));
}

void draw(){
  //last variable is opacity (0 is transparent, 255 is opaque)
  fill(100, 0, 255, 5);
  rect(0, 0, width, height);
  //x and y go in draw, not setup, because they are constantly changing 
  x = mouseX;
  y = mouseY;
  
  ////if you want to restricrt where you can draw, do the long first if function below 
  //if (mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
  if(mousePressed){
    fill(circleColor);
    ellipse(x, y, size, size);
  //if u want to fill in just a rectangle or smthg:
  //fill(255, 0, 0);
  //rect(0, 0, width/2, width/2);
  }

}
//}

//make size of circle bigger when you click the up arrow key:
void keyPressed(){
  //for non numerical or letter keys, need to have (key == CODED);
 if(key == CODED){ 
   if(keyCode == UP){
     size += 1;
     //size ++ (does the same thing as +=1)
   }
   if(keyCode == DOWN){
   size --;
  }
 }
}

//This is instead of mousePressed in draw.
//Makes it so that the circles only pop up when you click down. You can't click and hold.
//void mousePressed() {
//  ellipse(x, y, size, size);
//}
