
class Board {                
  // call variable for x position of rectangle
  float xPosition; 
  // call variable for y position of rectangle
  float yPosition;          
  // call variable for tile width
  float boardWidth;  
  // call variable for tile height
  float boardHeight;         
  // call variable for number of board columns
  int boardCols; 
  // call variable for number of board rows
  int boardRows;           
  // call tileColour variable
  color boardColor;   
  // array for board
  Tile newBoard[][];
  // space of each "tile" of grid
  int offset = 50;
  // arguments for board class
  Board(float initXPos, float initYPos, float initWidth, float initHeight, int initCols, int initRows, color initColor) {     

    // aggregation, a type of asscociation
    xPosition = initXPos;
    yPosition = initYPos;

    boardWidth = initWidth;
    boardHeight = initHeight;

    boardCols = initCols;
    boardRows = initRows;

    boardColor = initColor;
    // tile array for columns and rows
    newBoard = new Tile[boardCols][boardRows]; 
    // method used when class is called
    loadTiles();
  }

  void loadTiles() {
    for (int i=0; i < boardCols; i ++) {
      for (int j=0; j < boardRows; j ++) {

        // initialise each Tile object using the no of columns and rows stored in the array  
        newBoard[i][j] = new Tile(i*offset, j*offset, boardWidth, boardHeight, boardColor);
      }
    }
  }
  // if i and j are < than defined column and row no's then loop again
  void drawBoard() {
    for (int i = 0; i < boardCols; i ++) {
      for (int j = 0; j < boardRows; j ++) {
        newBoard[i][j].displayTile();
      }
    }
  }

  // returns float of Tile function (getters)
  float getxPosition() {  
    return xPosition;
  }

  float getyPosition() {  
    return yPosition;
  }

  float getWidth() {  
    return boardWidth;
  }

  float getHeight() {  
    return boardHeight;
  }
}