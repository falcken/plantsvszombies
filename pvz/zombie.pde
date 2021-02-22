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
    speed = -0.5;
    this.posX=posCol*tileWidth+leftOffset+80;
  }

  void update() {
    posX = posX+speed;
  }

  void render() {
    if (posX < width-500 || dead == false) {
      image(zombie1Sprite,posX, posY,100,125);
    } else {
      dead = true;
    }
  }
}
