void setup() {
  size(600,600);
}

void sierpinski(int n, PVector p1, PVector p2, PVector p3) {
  if (n > 0) {
    PVector m1 = midpoint(p1,p2);
    PVector m2 = midpoint(p2,p3);
    PVector m3 = midpoint(p3,p1);
    
    sierpinski(n - 1,p1,m3,m1);
    sierpinski(n - 1,m3,p3,m2);
    sierpinski(n - 1,m1,m2,p2);
  } else {
    line(p1.x,p1.y,p2.x,p2.y);
    line(p2.x,p2.y,p3.x,p3.y);
    line(p3.x,p3.y,p1.x,p1.y);
  }
}

void draw() {
  background(255);
  sierpinski(5,new PVector(100,500),new PVector(300,100),new PVector(500,500));
}

PVector midpoint(PVector p1, PVector p2) {
  return p1.copy().add(p2).mult(0.5);
}
