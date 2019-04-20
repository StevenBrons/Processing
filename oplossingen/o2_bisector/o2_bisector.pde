void setup() {
  size(500,500);
  background(255);
  fill(255);
  strokeWeight(10);
}

void bisector(PVector p1, PVector p2) {
  PVector m = p1.copy().add(p2).mult(0.5);
  PVector bisector1 = p1.copy().sub(p2).rotate(PI / 2).mult(0.5);
  PVector bisector2 = bisector1.copy().rotate(PI);
  line(m.copy().add(bisector1).x,m.copy().add(bisector1).y,m.copy().add(bisector2).x,m.copy().add(bisector2).y);
}

void draw() {
    PVector p1 = new PVector(100,100);
    PVector p2 = new PVector(400,400);
    bisector(p1,p2);
    circle(p1.x,p1.y,10);
    circle(p2.x,p2.y,10);
}
