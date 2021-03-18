class Projectile {
  float posY, posX;
  float speed;
  boolean dead = false;
  
  Projectile(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    
    speed = 2;
  }
  
  void update() {
    posX = posX+speed;
  }
  
  void render() {
    if (posX < width+100 && dead == false && posX < width) {
      strokeWeight(4);
      stroke(0);
      fill(186, 246, 87);
      ellipse(posX, posY, 25, 25);
    } else {
      dead = true;
    }
  }
}
