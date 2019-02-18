void setup() {
   size(500,500);  //set size of sketch
   int size = 8;   //make a variable how many by how many squares the bord will be
   int tileWidth = width / size; //determine the width of one tile
   noStroke(); //disable the stroke, or outline when you draw
   
   for (int x = 0; x < size; x++) {  //loop through all the x-tiles
     for (int y = 0; y < size; y++) { //loop through all the y-tiles
       if ((x + y) % 2 == 0) { // the % operator means remainder, so (x + y) % 2 == 0 checks if x + y is even. (And this happens to give a perfect chessboard)
         fill(0); //set the fill color to black
       }else {
         fill(255); //set the fill color to white
       }
       rect(x * tileWidth,y*tileWidth,tileWidth,tileWidth);  //draw a rectangle at the specified coördinates
     }
   }
}



void draw() {
}
