void setup() {
  size(600,600);
  int amount = 7;
  for (int x = 0; x < amount; x++) {
    for (int y = 0; y < amount; y++) {
      int xPos = x * 60;
      int yPos = y * 60;
      tree(new PVector(xPos,yPos));
    }
  }
}

void tree(PVector pos) {
  strokeWeight(5);
  PVector trunk = new PVector(0,-60);
  PVector branch = new PVector(0,-30);
  PVector trunkTip = pos.copy().add(trunk);
  
  int numberOfBranches = 10;
  stroke(98,43,0);
  line(pos.x,pos.y,trunkTip.x,trunkTip.y);
  
  branch.rotate(-PI / 2);
  stroke(16,167,0);
  for (int i = 0; i < numberOfBranches; i++) {
    PVector branchEnd = trunkTip.copy().add(branch);
    line(trunkTip.x,trunkTip.y,branchEnd.x,branchEnd.y);
    branch.rotate(PI / numberOfBranches);
  }  
}

void draw() {
  if (mousePressed) {
      tree(new PVector(mouseX,mouseY));
  }
}
