class zombie {
  float posX, posY;
  float speed;
  boolean dead = false;
  float topOffset = 150;
  float leftOffset = 75;
  float tileWidth = 100;
  float tileHeight = 125;
  float marginTop = 15;
  float marginLeft = 5;
  int posCol=8; 
  int posRow;


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
      println(2);
      strokeWeight(4);
      stroke(0);
      fill(186, 246, 87);
      ellipse(posX, posY, 25, 25);
    } else {
      dead = true;
    }
  }
}
