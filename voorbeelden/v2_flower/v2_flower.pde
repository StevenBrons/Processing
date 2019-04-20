void setup() {
  size(500,500);
  colorMode(HSB);
  drawFlower(new PVector(width/2,height/2));
}

void drawFlower(PVector p) {
   PVector trunk = new PVector(0,-150);
   PVector branch = new PVector(0,-25);
   PVector trunkAbs = p.copy().add(trunk);
   
   stroke(70,255,100);
   strokeWeight(10);
   line(p.x,p.y,trunkAbs.x,trunkAbs.y);
   
   noStroke();
   for (double angle = 0; angle < PI * 2; angle+=1) {
     fill((int)angle * (255 / (2 * PI)),255,255);
     branch.rotate(1);
     PVector leaf = p.copy().add(trunk).add(branch);
     circle(leaf.x,leaf.y,50);
   }
}
