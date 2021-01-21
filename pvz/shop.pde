class Shop {
  float posX, posY;
  float sizeX = 550;
  float sizeY = 120;
  float borderWidth = 10;
  
  Shop(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
  }
  
  void render() {
    // background
    fill(149, 61, 37);
    rect(posX, posY, sizeX, sizeY); 
    
    // sun area
    fill(104, 51, 21);
    rect(posX+borderWidth, posY+borderWidth, 100, sizeY-2*borderWidth);
    image(shopSun, posX+borderWidth+15, posY+borderWidth);
    
    fill(216, 219, 180);
    rect(posX+borderWidth+13, posY+borderWidth+65, 75, 30);
    
    // sun balance
    fill(0);
    textSize(16);
    text("1050", posX+borderWidth+30, posY+borderWidth+85);
  }
  
}
