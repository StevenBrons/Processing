Ball ball = new Ball();
ArrayList<Wall> walls = new ArrayList();

void setup() {
  size(500,500);
  Wall wallTop = new Wall(new PVector(0,0),new PVector(width,10));
  Wall wallRight = new Wall(new PVector(width - 10,0),new PVector(width - 10,height));
  Wall wallBottom = new Wall(new PVector(0,height - 10),new PVector(width,height - 10));

  walls.add(wallTop);
  walls.add(wallRight);
  walls.add(wallBottom);

}

void draw() {
  background(255);
}



class Ball {
    PVector pos;
    PVector vel; 
    int radius = 50;
    
    Ball () {
        pos = new PVector(width / 2,height / 2);
        vel = new PVector(-10,2);
    }
    
    void move() {
        //TODO
    }
    
    void bounce() {
        //TODO
    }
}    
        
class Wall {
    PVector topLeft;
    PVector bottomRight;
    
    Wall(PVector topLeft2, PVector bottomRight2) {
        topLeft = topLeft2;
        bottomRight = bottomRight2;
    }
    
    //boolean intersects(Ball b) {
        
    //    //TODO
    //}
    
    void show() {
    }
}   
