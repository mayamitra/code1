//Patern replicated is sourced from the chapter "Rem One-Liners," and it is based on
//Peteris Krumin's one-liners. 

//Ok so I based mine off of the assumption that all months are 31 days! I couldn't
//think of a way to make it differ by month, especially since February changes. Also,
//I kind of ignored the seven second thing. 

int month;
int date;
int year;
String dateSentence;

void setup() {
  size(500, 500);
  background(255);
  month = 2;
  date = 9;
  year = 2018;
}

void draw() {
  fill(0);
  text ("The date 14 months, 9 days, and 7 seconds ago is:", 100, 100);

  int newDate = calcDate(date);
  if (newDate<=0) {
    newDate = 31+newDate;
  }

  int newMonth = calcMonth(month);
  if (newMonth<0) {
    newMonth = 12+newMonth;
  }
  if (newDate<=31 && newDate>=23) {
    newMonth = newMonth-1;
  }
  if (newMonth<0) {
    newMonth = 12+newMonth;
  }

  int newYear = calcYear(year);
  if (newMonth>=11) {
    newYear = newYear-1;
  }

  dateSentence = newMonth + "/" + newDate + "/" + newYear;
  text(dateSentence, 100, 150);
}

int calcDate (int date) {
  int newDate = date - 9;
  return newDate;
}

int calcMonth (int month) {
  int newMonth = month - 14;
  return newMonth;
}

int calcYear (int year) {
  int newYear = year - 1;
  return newYear;
}
