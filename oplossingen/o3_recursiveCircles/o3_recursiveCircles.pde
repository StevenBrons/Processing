void setup() {
  size(600,600);
  background(255);
  strokeWeight(2);
  recursiveCircles(20,new PVector(width / 2,height / 2));
}

void recursiveCircles(int n, PVector pos) {
  if (n > 0) { 
    circle(pos.x,pos.y,n * 10);
    recursiveCircles(n - 1,pos.add(10,0));
  }
}
