//Plant daryl;
//Plant eugene;

Plant garden[] = new Plant [10];

void setup() {
  size(700, 500);
  //instantiate an instance of the class
  //  daryl and eugene are new instances of this class
  //daryl = new Plant(int(random(100, 400)));
  //eugene = new Plant(int(random(100, 400)));
  noStroke();
  for (int i=0; i<garden.length; i++) {
    garden[i] = new Plant(int(random(10, 700)), 2+(i*3));
  }
}

void draw() {
  background(200);
  //eugene.display(10, 4, color(0, 150, 50));
  //daryl.display(100, 10, color(0,255, 10));
  
  for (int i=0; i<garden.length; i++) {
    garden[i].display(2+(i*3), color(0, i*20, 30)); 
    garden[i].grow();
    println(garden[i].plantHeight);
  }
  }
