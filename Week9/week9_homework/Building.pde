class Building {
  //data
  float bHeight;
  float bWidth;
  color bColor;
  float antennaHeight;
  int xPos;
  
  //constructor
  Building(int _xPos, float _bHeight, float _bWidth) {
    xPos = _xPos;
    bHeight = _bHeight;
    bWidth = _bWidth;
  }

  //methods
  void display(float _antennaHeight, color _bColor) {
    fill(_bColor);
    antennaHeight = _antennaHeight;
    rect(xPos, bHeight, bWidth, 400);
    line(xPos+(bWidth/2), bHeight, xPos+(bWidth/2), bHeight-antennaHeight);
    rect(xPos+(bWidth/2)-1, bHeight-antennaHeight, 2, antennaHeight);
  }
}
