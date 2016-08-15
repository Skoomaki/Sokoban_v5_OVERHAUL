class Crate extends Tile {

  Crate(float xPosition, float yPosition, float tileWidth, float tileHeight, color tileColor) {
    
    super(xPosition, yPosition, tileWidth, tileHeight, tileColor);
  }

  boolean crateRightOfWall;
  boolean crateLeftOfWall;
  boolean crateTopOfWall;
  boolean crateBottomOfWall;

  // detection of player and the wall
  void collisionDetectWall() {      
    // check for player on right side of wall
    if ((crate1.getxPosition() - wall1.gettileWidth() == wall1.getxPosition()) && (crate1.getyPosition() ==  wall1.getyPosition())) {  
      crateRightOfWall = true;
    } else {
      crateRightOfWall = false;
    }
    // check for player on left side of wall
    if ((crate1.getxPosition() + crate1.gettileWidth() == wall1.getxPosition()) && (crate1.getyPosition() ==  wall1.getyPosition())) {  
      crateLeftOfWall = true;
    } else {
      crateLeftOfWall = false;
    }
    // check for playeris below wall
    if ((crate1.getxPosition() ==  wall1.getxPosition()) && ((crate1.getyPosition() - wall1.gettileHeight() == wall1.getyPosition()))) {  
      crateBottomOfWall = true;
    } else {
      crateBottomOfWall = false;
    }
    // check for player is above wall
    if ((crate1.getxPosition() ==  wall1.getxPosition()) && ((crate1.getyPosition() + wall1.gettileHeight() == wall1.getyPosition()))) {  
      crateTopOfWall = true;
    } else {
      crateTopOfWall = false;
    }
  }

}