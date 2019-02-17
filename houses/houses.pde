final int HOUSE_WIDTH = 60;

void setup() {
  size(500,500);
  for (int i = 0; i < (width / HOUSE_WIDTH) + 1; i++) {
    drawHouse(i * HOUSE_WIDTH,height / 2);
  }
}

void drawHouse(int x,int y) {
  rect(x,y,HOUSE_WIDTH,HOUSE_WIDTH);
  triangle(x,y,x + (HOUSE_WIDTH / 2),y - HOUSE_WIDTH,x + HOUSE_WIDTH,y);
}

void draw() {
}
