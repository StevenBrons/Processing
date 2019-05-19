ArrayList<Cloud> clouds = new ArrayList();
int time = 0;

void setup() {
  size(500,500);
}

void draw() {
  background(76,195,255);
  if (time % 100 == 0) { //every 100 frames
      clouds.add(new Cloud());
  }
  for (Cloud curCloud : clouds) {
    curCloud.update();
    curCloud.show();
  }
  time++;
}

class Cloud {
 
  PVector pos = new PVector(-100,int(random(width)));
  PVector wind = new PVector(3,0);
  
  void update() {
    pos.add(wind);
  }
  
  void show() {
    circle(pos.x - 40,pos.y + 10,80);
    circle(pos.x + 40,pos.y + 10,76);
    circle(pos.x,pos.y,80);
  }
  
}
