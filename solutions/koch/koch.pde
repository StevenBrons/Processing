void setup() {
  size(1000,1000);
  background(255);
  strokeWeight(5);
  //binaryTree(5,new PVector(width / 2,height / 2),-PI / 2);
  kochsCurve(1,new PVector(50,height/2),new PVector(width - 50,height / 2));
}

void kochsCurve(int n, PVector p1, PVector p2) {
  if (n == 0) {
    line(p1.x,p1.y,p2.x,p2.y);
    return;
  }
  PVector m1 = p2.copy().sub(p1).mult(0.33);
  PVector m2 = p2.copy().sub(p1).mult(0.66);
  PVector s = p2.copy().sub(p1).mult(0.5).add(p1);
  PVector q = s.add(m1.copy().rotate(-PI / 2));
  
  m1.add(p1);
  m2.add(p1);
  
  kochsCurve(n - 1,p1,m1);  
  kochsCurve(n - 1,m1,s);
  kochsCurve(n - 1,s,m2);
  kochsCurve(n - 1,m2,p2);

}

void binaryTree(int n,PVector pos,float dir) {
  if (n == 0) {
    return;
  }
  float angle = PI / 12;
  int length = n * 30;
  
  PVector branch1 = PVector.fromAngle(dir).setMag(length).rotate(-angle);
  PVector branch2 = PVector.fromAngle(dir).setMag(length).rotate(angle);

  PVector tip1 = pos.copy().add(branch1);
  PVector tip2 = pos.copy().add(branch2);

  line(pos.x,pos.y,tip1.x,tip1.y);
  line(pos.x,pos.y,tip2.x,tip2.y);
  binaryTree(n - 1, tip1,branch1.heading());
  binaryTree(n - 1, tip2,branch2.heading());
}
