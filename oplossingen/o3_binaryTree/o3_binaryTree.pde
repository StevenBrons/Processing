void setup() {
  size(600,600);
}

void binaryTree(int n, PVector pos, PVector trunk) {
  float angle = ((float) mouseX / width) * (PI / 2);
  if (n > 0) {
    PVector tip = pos.copy().add(trunk);
    line(pos.x,pos.y,tip.x,tip.y);
    
    PVector leftBranch = trunk.copy().mult(0.8).rotate(-angle);
    PVector rightBranch = trunk.copy().mult(0.8).rotate(angle);
    binaryTree(n - 1,tip,leftBranch);
    binaryTree(n - 1,tip,rightBranch);
  }  
}  

void draw() {
    background(255);
    binaryTree(10,new PVector(width / 2,height),new PVector(0,-height / 6));
}
