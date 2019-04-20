void setup() {
  size(1000,1000);
  background(255);
  strokeWeight(5);
  polygon(new PVector(100,100),50,3);
  polygon(new PVector(300,100),50,4);
  polygon(new PVector(500,100),50,5);
  polygon(new PVector(700,100),50,17);

}

void polygon(PVector c, int r, int n) {
  PVector rad = new PVector(0,r);
  float angle = PI * 2 / n;
  for (int i = 0; i < n; i++) {
    PVector from = rad.copy().add(c);
    rad.rotate(angle);
    PVector to = rad.copy().add(c);
    line(from.x,from.y,to.x,to.y);
  }
}
