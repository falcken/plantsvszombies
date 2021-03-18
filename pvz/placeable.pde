class Placeable {
  int item = 0;
  float posX, posY;
  boolean hidden = false;
  
  // level specs
  float topOffset = 150;
  float leftOffset = 75;
  float rightOffset = 50;
  float bottomOffset = 50;
  float tileWidth = 100;
  float tileHeight = 125;
  
  // highlighter
  int hX = 0;
  int hY = 0;
  float highlightX;
  float highlightY;
  boolean vacant = true;

  
  Placeable() {
  }

  void render() {
    if (!hidden) {
      highlighter();
      posX = mouseX;
      posY = mouseY;
      
      fill(0, 255, 0);
      //rect(posX, posY, 50, 50);
      image(plant1Sprite, posX, posY, plant1Sprite.width*0.75, plant1Sprite.height*0.75);

      
      if (mousePressed && vacant) {
        plant();
        hidden = true;
      }
    }
  }
  
  void highlighter() {
    hX = (mouseX-int(leftOffset))/int(tileWidth);
    hY = (mouseY-int(topOffset))/int(tileHeight);

    println(hX);
    if (hX < 9 && hY < 4) {
      highlightX = hX*tileWidth+leftOffset;
      highlightY = hY*tileHeight+topOffset;
      
      // check if slot is vacant
      for (int i = 0; i < plants.size(); i++) {
        Plant p = plants.get(i);
        if (p.posCol == hX && p.posRow == hY) {
          vacant = false;
          fill(255, 0, 0);
          break;
        } else {
          fill(160, 255, 150);
          vacant = true;  
        }
      }
      
      rect(highlightX, highlightY, tileWidth, tileHeight);
    }
  }
  
  void plant() {
    plants.add(new Plant(hX, hY));
  }
}
