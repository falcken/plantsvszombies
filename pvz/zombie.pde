class zombie {
  float posX, posY;
  float speed;
  boolean dead = false;
  float topOffset = 105;
  float leftOffset = 75;
  float tileWidth = 100;
  float tileHeight = 125;
  float marginTop = 15;
  float marginLeft = 5;
  int posCol=9; 
  int posRow;
  int hp=10;


  zombie(int posRow) {
    this.posY = posRow*tileHeight+topOffset+marginTop+30;
    speed = -1.25;
    this.posX = posCol*tileWidth+leftOffset+80;
  }

  void update() {
    posX = posX+speed;
  }

  void render() {
    if (dead == false) {
    if (posX < width-500 || dead == false) {

      image(zombie1Sprite,posX, posY,100,125);

      strokeWeight(2);
      stroke(0);
      fill(0);
      image(zombie1Sprite,posX, posY,100,125);
      rect(posX, posY, 100, 10);
      fill(186, 246, 87);
      noStroke();
      rect(posX, posY, 10*hp, 10);
      } else if (posX < width-600) {
        dead = true;
      }
    }
    
    if (posX < 50 && !dead) {
      println("game over!");
      handleGameEnd();
    }
  }
  
  void coll(Projectile p) {
    if (p.posX > posX && p.posY > posY && p.posY < posY+100 && p.dead == false && dead == false) {
      hp-=2;
      p.dead = true;
      if (hp == 0) {
        dead = true;
        kills++;
      }
    }
  }
  
  void eat(Plant p) {
    if (p.posX > posX-100 && p.posY > posY && p.posY < posY+100 && p.dead == false && dead == false) {
      speed = 0;
      p.hp = p.hp-0.01;
     
     if (p.hp < 0) p.dead = true;
    } else if (p.dead || dead) {
      speed = -1.25;
    }
  }
}
