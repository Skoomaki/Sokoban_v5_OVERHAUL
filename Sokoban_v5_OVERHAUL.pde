// Fresh start
// initialising instances of classes
Player player1;
Crate crate1;
Board board1;
Wall wall1;
Wall wall2;
Wall wall3;
String[] tilesExternal;
int tileindex= 0;
String wall = "w";
String board = "b";
void setup() {
  // loading of external txt file
  tilesExternal = loadStrings("tilesExternal.txt");
  // size of screen
  size(500, 500);
  // create new instance of board
  board1 = new Board(0, 0, 50, 50, 10, 10, 255);
  // create new instance of player class
  player1 = new Player(100, 100, 50, 50, color(22, 244, 11));
  // create new instance of crate class
  crate1 = new Crate(200, 200, 50, 50, color(22, 45, 156));


  // An exception that is triggered when a external file is not found
  try { 
    String[] pieces = (split(tilesExternal[tileindex], ','));
    println();
    for ( int tileindex = 0; tileindex < pieces.length; tileindex++) {
      if (pieces[tileindex].equals(wall) == true) {
        // each piece is a character in the txt file
        println(pieces[0], pieces[1], pieces[2], pieces[3], pieces[4]);
        // create new instance of crate class
        wall1 = new Wall(400, 100, 50, 50, color(0));
        wall2 = new Wall(350, 50, 50, 50, color(0));
        wall3 = new Wall(300, 50, 50, 50, color(0));
      }
    }
  }
  //This catch is an example of a Exception, that is triggered when the external file doesn't load
  catch (NullPointerException errorLoadingTilesFromTxt) {
    // print to line text if file is missing
    println("no file was found here");
  }
}


void draw() {

  // creating grid
  board1.drawBoard();
  // getting xPosition and yPosition of player 
  // checking if hitting wall 
  // if true send back 
  if (player1.getyPosition() == 500) {
    player1.yPosition = player1.yPosition-50;
  }
  if (player1.getyPosition() == -50) {
    player1.yPosition = player1.yPosition+50;
  }
  if (player1.getxPosition() == 500) {
    player1.xPosition = player1.xPosition-50;
  }
  if (player1.getxPosition() == -50) {
    player1.xPosition = player1.xPosition+50;
  }
  // create grid
  //board1.displayBoard();
  // call constructor to display crate
  crate1.displayTile();   
  // call constructor to display player
  player1.displayPlayer();
  // call constructor to display wall
  wall1.displayTile();
  wall2.displayTile();
  wall3.displayTile();
  // call method for collision of player and wall
}