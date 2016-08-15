class Tile {

  float xPosition;    // x position of rect
  float yPosition;    // y position of rect
  float tileWidth;    // width of tile
  float tileHeight;   // height of tile
  color tileColor;    // color of tile


  Tile(float initialX, float initialY, float initialWidth, float initialHeight, color initialColor) {
    // aggregation, a type of association 
    xPosition = initialX;
    yPosition = initialY;
    tileWidth = initialWidth;
    tileHeight = initialHeight;
    tileColor = initialColor;
  }

  // ENCAPSULATION
  //getters
  float getxPosition() {
    return xPosition;
  }
  float getyPosition() {
    return yPosition;
  }
  float gettileWidth() {
    return tileWidth;
  }
  float gettileHeight() {
    return tileHeight;
  }

  //setters
  void setxPosition(float val) {
    xPosition = val;
  }
  void setyPosition(float val) {
    if (val > height) val = height-50;
    yPosition = val;
  }
  void setxPosition(int initialX) {
    xPosition = xPosition + initialX;
  }
  void setyPosition(int initialY) {
    yPosition = yPosition + initialY;
  }
  // method to be called in draw to display class variables
  void displayTile() {
    fill(tileColor);
    rect(xPosition, yPosition, tileWidth, tileHeight);
  }
}