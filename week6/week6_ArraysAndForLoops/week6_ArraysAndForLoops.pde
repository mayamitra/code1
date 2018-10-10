//NOTES ON MODULO:
// if(i % 3 )==0, % called MODULO and gives you the reaminder, 
// so this will give you multiples of 3 as i, becuase their remainder will be 0.
//frameCount % 30 == 0, conditional that only does something every 30 frames

//PROBABILITY: things will happen 25% of the time whe you include this
//float r;
//r = (0, 1);
//if (r>.75); OR if(r<.25)

//Arrays: list of variables (have to be of the same type (ex: int))
//int number[] = {1, 2, 3, 4, 5, 6}
//indexes start at 0. So in the array above, it is the 0th number in the array
//access the data: num[0] = 1
//Also, for loops and arrays go hand in hand 


int myIntegerArray[] = {1, 2, 3, 4, 5};
String myStringArray[] = {"whatever", "we", "want"};

//creats an empty array with four slots to put into it: {0, 0, 0, 0}
int newArray[] = new int[4];

int newIntegerArray[] = new int[100];

void setup() {
  println(myIntegerArray[4]); //will print out 5
  //println(myStringArray[1]); //will print out we

  for (int i=0; i<3; i++) {
    println(myStringArray[i]); //will print out the whole string
  }

  newArray[0] = 3;
  newArray[3] = 5;
  for (int i=0; i<4; i++) {
    println(newArray[i]); //will print out the whole string
  }
  for (int i = 0; i<100; i++) {
    newIntegerArray[i] = i+1; //+1 makes it 1-100 instead of 0-99
    println(newIntegerArray[i]);
  }
}

void draw() {
}
