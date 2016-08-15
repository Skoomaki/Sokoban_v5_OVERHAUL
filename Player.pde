// class for player
public class Player {
  // private classes only player class can use
  private  float xPosition;
  private  float yPosition;
  private  float pWidth;
  private  float pHeight;
  private  color pColor;

  // pass tile arguments to player class
  Player(float newxPosition, float newyPosition, float newpWidth, float newpHeight, color newpColor) {
    
  // aggragation, type of association
  xPosition = newxPosition;
  yPosition = newyPosition;
  pWidth = newpWidth;
  pHeight = newpHeight;
  pColor = newpColor;
  }

  void displayPlayer() {
    fill(pColor);
    rect(xPosition, yPosition, pWidth, pHeight);
  }
  // getters
  float getxPosition() {
    return xPosition;
  }
  float getyPosition() {
    return yPosition;
  }
  float getpwidth() {
    return pWidth;
  }
  float getpHeight() {
    return pHeight;
  }
}
void keyPressed() {
  if (key == CODED) {

    if ((keyCode == UP)) {
      player1.yPosition = player1.yPosition - 50;
    }    
    if ((keyCode == DOWN)) {
      player1.yPosition = player1.yPosition + 50;
    } 
    if ((keyCode == LEFT)) {
      player1.xPosition = player1.xPosition - 50;
    } 
    if ((keyCode == RIGHT)) {
      player1.xPosition = player1.xPosition + 50;
    }
  }
}