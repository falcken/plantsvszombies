Level level = new Level();
Shop shop = new Shop(30, 0);
PImage sunSprite;
PImage shopSun;

void setup() {
  size(1024, 768);
  sunSprite = loadImage("sol.png");
  shopSun = loadImage("sol.png");
  shopSun.resize(70, 70);
}

void draw() {
  background(255);
  level.render();
  shop.render();
}
