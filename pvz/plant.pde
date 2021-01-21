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
  
  Plant(float posCol, float posRow) {
    this.posCol = posCol;
    this.posRow = posRow;
  }
  
  void render() {
    image(plant1Sprite, posCol*tileWidth+leftOffset+marginLeft, posRow*tileHeight+topOffset+marginTop);
    lifetime++;
    if (lifetime % 180 == 0) {
      shoot();
    }
  }
  
  void shoot() {
    println("pew");
    projectiles.add(new Projectile(posCol*tileWidth+leftOffset+80, posRow*tileHeight+topOffset+marginTop+30));
  }
  
}
