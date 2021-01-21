ArrayList<Sun> Suns = new ArrayList<Sun>(); 
IntList antiLag = new IntList();

Level level = new Level();
Shop shop = new Shop(30, 0);
PImage sunSprite;
PImage shopSun;

void setup() {
  size(1024, 768);
  sunSprite = loadImage("sol.png");
  shopSun = loadImage("sol.png");
  shopSun.resize(70, 70);
  Suns.add(new Sun());
}

void draw() {
  background(255);
  level.render();
  shop.render();
  SunRender();
}

void SunRender() {
  for (int i=0; i<Suns.size(); i++) {
    Sun s=Suns.get(i);
    s.render(i);
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
