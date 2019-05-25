ArrayList<Particle> particles = new ArrayList();

void setup () {
  size(800,800);
  noStroke();
}

void draw() {
  background(0);
  particles.add(new Particle(new PVector(width / 2,height / 2)));
  
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.draw();
    p.update();
    if (p.isDead()) {
      particles.remove(p);
    }
  }
}

class Particle {
  
  PVector pos;
  PVector vel;
  float maxlife = 100;
  float lifetime;
  color curColor;
  int size;

  Particle(PVector pos) {
    this.pos = pos;
    this.vel = new PVector(1 - random(2),-2);
    this.curColor = color(255,random(60),0);
    this.lifetime = maxlife;
    this.size = (int) (80 + random(20));
  }
  
  void update() {
    lifetime--;
    this.pos.add(vel);
  }
  
  boolean isDead() {
    return lifetime <= 0;  
  }
  
  void draw() {
    float alpha = 255 * (lifetime / maxlife);
    fill(curColor,alpha);
    circle(pos.x,pos.y,size);
  }
}
