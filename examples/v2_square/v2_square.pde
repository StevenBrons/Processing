void setup() {
  size(300,300);
  drawSquare(new PVector(width / 2,height / 2),new PVector(100,0));
  //drawSquare(new PVector(width / 2,height / 2),new PVector(100,30));   
}

void drawSquare(PVector pos,PVector side) {
  PVector p2 = pos.copy().add(side);
  side.rotate(PI / 2);
  PVector p3 = p2.copy().add(side);
  side.rotate(PI / 2);
  PVector p4 = p3.copy().add(side);

  line(pos.x,pos.y,p2.x,p2.y);
  line(p2.x,p2.y,p3.x,p3.y);
  line(p3.x,p3.y,p4.x,p4.y);
  line(p4.x,p4.y,pos.x,pos.y);

}  

void draw() {
}  
