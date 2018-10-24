// Fix all the syntax errors so the code runs.
int counter;
boolean isCodeGreat = true;
String welcomeMsg = "welcome to the first midterm question!";

float floatArray [] = new float [100];


void setup() {
  // we'll create a counter variable to count the frames
  int counter = 0;

  println(welcomeMsg);

  println("now we'll do a loop and print the iterating value!");

  for (int i = 0; i < 100; i++) {
    println("this is loop number " + i);

    //println("there are " + floatArray + size() + " positions in floatArray");
    println("there are " + i + " positions in floatArray");
  }
}

void draw() {
  // we'll increment counter every frame until 60, then reset
  if (0 < counter && counter < 60) {
    counter ++;
  } else {
    counter = 0;
  }
}
