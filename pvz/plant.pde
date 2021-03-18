class Plant {
  float topOffset = 150;
  float leftOffset = 75;
  float tileWidth = 100;
  float tileHeight = 125;
  float marginTop = 15;
  float marginLeft = 5;
  float posCol, posRow;
  int lifetime = 0;
  int type = 1;
  float posX, posY;
  float hp = 3;
  boolean dead = false;

  Plant(float posCol, float posRow) {
    this.posCol = posCol;
    this.posRow = posRow;
  }

  void render() {
    if (dead == false) {
      posX = posCol*tileWidth+leftOffset+marginLeft;
      posY = posRow*tileHeight+topOffset+marginTop;
      image(plant1Sprite, posCol*tileWidth+leftOffset+marginLeft, posRow*tileHeight+topOffset+marginTop);
      lifetime++;
      if (lifetime % 180 == 0) {
        shoot();
      }
      fill(0);
      rect(posX, posY-15, 100, 10);
      fill(186, 246, 87);
      noStroke();
      rect(posX, posY-15, 33*hp, 10);
    }
  }

  void shoot() {
    //  println("pew");
    if (dead == false) {
      projectiles.add(new Projectile(posCol*tileWidth+leftOffset+80, posRow*tileHeight+topOffset+marginTop+30));
    }
  }
}
