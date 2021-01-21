ArrayList<Sun> Suns = new ArrayList<Sun>(); 
IntList antiLag = new IntList();

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
  Suns.add(new Sun());
}

void draw() {
  background(255);
  level.render();
  shop.render();
  plant1.render();
  
  for (int i=0; i<Suns.size(); i++) {
    Sun b=Suns.get(i);
    b.update(i);
    b.checkEdge();
    b.display();
  }

  antiLag.sort();

  if (antiLag.size()>0) {
    for (int i=0; i<antiLag.size(); i++) {
      antiLag.sub(i, i);
      Suns.remove(antiLag.get(i));
    }
  }
  
  antiLag.clear();
}
