ArrayList<Particle> drops = new ArrayList();
PVector wind = new PVector(0,0);

void setup() {
  size(500,500);
  strokeWeight(3);
}

void draw() {
  wind = new PVector((-(width / 2) + mouseX) / 40,0);
  
  for (int i = 0; i < 10; i++) {
    Particle newDrop = new Particle(new PVector(random(width + 400) - 200,-50));
    drops.add(newDrop);
  }
  
  background(186, 204, 211);
    for (int i = drops.size() - 1; i >= 0; i--) {
      Particle p = drops.get(i);
      p.update();
      p.draw();
      if (p.isDead()) {
        drops.remove(p);
      }  
  }
}

class Particle {
 
  PVector pos;
  PVector vel;
  int startColor;
  float lifetime;
  float maxLifetime = 255;
  
  Particle(PVector pos) {
     lifetime = maxLifetime;
     this.pos = pos;
     vel = new PVector(0,4);
     startColor = color(0, random(120), 190 + random(60));
  }
  
  void update() {
    pos.add(vel);
    pos.add(wind);
    lifetime -= 2;
  }
  
  boolean isDead() {
    return lifetime <= 0;
  }
  
  void draw() {
    stroke(startColor,255 * (lifetime / maxLifetime));
    line(pos.x,pos.y,pos.x + wind.x,pos.y + 20);
  }
  
}
