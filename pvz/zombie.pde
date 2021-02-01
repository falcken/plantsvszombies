class zombie {
  float topOffset = 150;
  int a = 1024;
  int posRow;
  int speed=0;
  float tileWidth = 100;
  float tileHeight = 125;
  int d=50;

  zombie(int posRow) {  
    this.posRow=posRow;
  }

  void render() {

    ellipse(a, posRow*tileHeight+topOffset, d, d);
    //x_pos=x_pos-speed;
  }
}
