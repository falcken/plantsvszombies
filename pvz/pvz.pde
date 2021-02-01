ArrayList<Sun> Suns = new ArrayList<Sun>(); 
ArrayList<Projectile> projectiles = new ArrayList<Projectile>(); 
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
  SunRender();
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.update();
    p.render();
  }
}

void SunRender() {
  for (int i=0; i<Suns.size(); i++) {
    Sun s=Suns.get(i);
    s.render(i);
    plant1.render();
  }


  antiLag.sort();
  for (int i=0; i<antiLag.size(); i++) {
    antiLag.sub(i, i);
    Suns.remove(antiLag.get(i));
  }
  antiLag.clear();
}
