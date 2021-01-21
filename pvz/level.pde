class Level {
  float rows = 4;
  float columns = 9;
  float topOffset = 100;
  float leftOffset = 75;
  float rightOffset = 50;
  float bottomOffset = 50;
  float tileWidth = 100;
  float tileHeight = 125;

  Level() {
  }

  void render() {
    // background
    background(216, 219, 180);
    
    // grass
    for (int i = 0; i < rows; i++) {
      for (int u = 0; u < columns; u++) {
        noStroke();
        fill(38, 150, 26);
        if (int(u+(i*columns)) % 2 == 0) fill(26, 255, 0);

        rect(leftOffset+u*tileWidth, topOffset+i*tileHeight, tileWidth, tileHeight);
      }
    }
  }
}
