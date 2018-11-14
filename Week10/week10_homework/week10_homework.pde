//QUESTION: IS THERE A WAY TO MAKE SOME THINGS NO STROKE, AND SOME THINGS HAVE STROKE? 

Building city[] = new Building [4];
ArrayList<Person> people;

void setup() {
  size(600, 600);
  //noStroke();
  for (int i=0; i<city.length; i++) {
    city[i] = new Building(int(random(0, 550)), random(100, 300), random(40, 100));
  }

  people = new ArrayList<Person>();
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

  for (int i=0; i<city.length; i++) {
    city[i].display(i*10, color(50, i*50, 70));
  }

  for (int i=0; i<people.size(); i++) {
    Person p = people.get(i);
    p.move();
    p.display(70);
    p.walk();
  }
}

void mousePressed(){
  people.add(new Person(mouseX, mouseY));
}
