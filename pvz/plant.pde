class Plant {
  float topOffset = 150;
  float leftOffset = 75;
  float tileWidth = 100;
  float tileHeight = 125;
  float marginTop = 15;
  float marginLeft = 5;
  float posCol, posRow;
  int type = 1;
  
  Plant(float posCol, float posRow) {
    this.posCol = posCol;
    this.posRow = posRow;
  }
  
  void render() {
    image(plant1Sprite, posCol*tileWidth+leftOffset+marginLeft, posRow*tileHeight+topOffset+marginTop);
  }
  
  void shoot() {
    
  }
  
}
