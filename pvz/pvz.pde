Level level = new Level();
Shop shop = new Shop(30, 0);
Plant plant1 = new Plant(2, 3);

PImage sunSprite;
PImage shopSun;
PImage plant1Sprite;

void setup() {
  size(1024, 768);
  sunSprite = loadImage("sol.png");
  shopSun = loadImage("sol.png");
  shopSun.resize(70, 70);
  plant1Sprite = loadImage("plant1.png");
  plant1Sprite.resize(95, 97);
}

void draw() {
  background(255);
  level.render();
  shop.render();
  plant1.render();
}
