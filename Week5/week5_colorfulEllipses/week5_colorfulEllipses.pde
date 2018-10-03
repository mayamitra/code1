void setup(){
 size(800, 800);

 noStroke();
}

void draw(){
   background(255);
  int numCircles = 20;
  int size = width/numCircles;
  //set up i and j = size/2 so that the whole circle is on screen, 
  //instead of starting half-off screen
  for (int i=size/2; i<width; i+=width/numCircles){
    for(int j = size/2; j<height; j+=height/numCircles){    
      int g = int(map(i, 0, width, 0, 255));
      int r = int(map(j, 0, width, 0, 255));
      
      //make this local variable because you only want it to change in the loop
      float d = dist(mouseX, mouseY, i, j);
      
      //the circles 0 units away from the mouse have a radius of 20, 
      //the circles width/2 (or more) units away from the mouse have a radius of 40
      float s = map(d, 0, width/2, 20, 40);
      
      //the circles 0 units away from the mouse have an opacity of 0, 
      //the circles width/2 (or more) units away from the mouse have an opacity of 255;
      float o = map(d, 0, width/2, 0, 255);
      //change opacity of our ellipse based on mouse distance
      fill(r, g, 100, o);
      //ellipses change size based on where our mosue is
      ellipse(i, j, s, s);
    }
  }
}
