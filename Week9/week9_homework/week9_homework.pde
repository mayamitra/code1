//Building frank;
//Building joe;

Building city[] = new Building [4];

void setup() {
  size(600, 600);
  //frank = new Building(30, 200, 50);
  //joe = new Building(200, 300, 40);
  noStroke();
  for (int i=0; i<city.length; i++){
    city[i] = new Building(int(random(0, 550)), random(100, 300), random(40, 100));
  }
}

void draw() {
  background(30, 100, 255);
  fill(100);
  rect(0, 500, width, height); 
  fill(255, 204, 0);
  ellipse(50, 50, 70, 70);
  fill(255);
  textSize(40);
  text("Welcome to the city!", 100, 50);

  //frank.display(40, color(100, 30, 50));
  //joe.display(20, color(30, 100, 70));
  
  for (int i=0; i<city.length; i++){
    city[i].display(i*10, color(50, i*50, 70));
  }
}
