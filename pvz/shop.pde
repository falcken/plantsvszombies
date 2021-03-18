class Shop {
  float posX, posY;
  float sizeX = 550;
  float sizeY = 120;
  float borderWidth = 10;
  int balance=0;

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
    text(balance, posX+borderWidth+30, posY+borderWidth+85);
    
 
    

    //plants
    fill(104, 51, 21);
    rect(posX+borderWidth+110, posY+borderWidth, 100, sizeY-2*borderWidth);
    fill(88, 196, 206);
    rect(posX+borderWidth+120, posY+borderWidth+5, 80, (sizeY-2*borderWidth)*0.9);
    image(plant1Sprite, posX+borderWidth+15+110, (sizeY-2*borderWidth)*0.9-plant1Sprite.height*0.7-7,plant1Sprite.width*0.65,plant1Sprite.height*0.65);

    fill(216, 219, 180);
    rect(posX+borderWidth+13+110, posY+borderWidth+65, 75, 30);
    
    //price
    fill(0);
    textSize(16);
    text(100, posX+borderWidth+130, posY+borderWidth+85);
    
   if(mousePressed && mouseX>posX+borderWidth+110 && mouseX<posX+borderWidth+110+100 && mouseY>posY+borderWidth &&mouseY<posY+borderWidth+sizeY-2*borderWidth && balance>=100){
     placeable.hidden=false;
     balance-=100;
   }
  
  }
}
