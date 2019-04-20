void setup() {
  size(300,300);
}

void draw() {
  background(255);
  PVector mouse = new PVector(mouseX,mouseY);
  PVector line = new PVector(0,100);
  int amount = 10;
  for (double i = 0; i < amount; i++) {
    PVector lineEnd = line.copy().add(mouse);
    line(mouse.x,mouse.y,lineEnd.x,lineEnd.y);
    line.rotate((PI * 2 / amount));
  }
}
