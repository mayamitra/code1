//create an interger function that adds two numbers and returns the sum

String additionSentence;
int n1, n2;

void setup(){
//  calcSum(1, 7); 
  size(500, 500);
  println(addition(4, 5));
}

//draw will make it loop, setup will make it only print once:
void draw(){
//  calcSum(1, 7); 
  background(0);
  additionSentence = n1 + " + " + n2 + " = " + addition(n1, n2);
  text(additionSentence, 0, height/2);
  textSize(50);
}

//void calcSum(int num1, int num2){
//  println(num1 + num2);
//}

int addition(int a, int b){
  //makeing sum a local variable because it will be different for each addition;
  int sum = a + b;
  return sum;
}

//generate random numbers every time u click the screen
void mousePressed(){
  n1 = int(random(0, 10));
  n2 = int(random(0, 10));
}
