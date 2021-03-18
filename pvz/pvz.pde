ArrayList<Sun> Suns = new ArrayList<Sun>(); 
ArrayList<Projectile> projectiles = new ArrayList<Projectile>(); 
ArrayList<zombie> zombies = new ArrayList<zombie>(); 
IntList antiLag = new IntList();

Level level = new Level();
Shop shop = new Shop(30, 0);
Plant plant1 = new Plant(2, 1);
PImage sunSprite;
PImage shopSun;
PImage plant1Sprite;
PImage zombie1Sprite;

void setup() {
  size(1024, 768);
  sunSprite = loadImage("sol.png");
  shopSun = loadImage("sol.png");
  zombie1Sprite = loadImage("zombie1.png");
  shopSun.resize(70, 70);
  plant1Sprite = loadImage("plant1.png");
  plant1Sprite.resize(95, 97);
}

void draw() {
  background(255);
  level.render();
  shop.render();
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.update();
    p.render();
  }
  plant1.render();
  SunRender();
  for (int i=0; i<zombies.size(); i++) {
    zombie z=zombies.get(i);
    z.update();
    z.render();
    for (int u = 0; u < projectiles.size(); u++) {
      z.coll(projectiles.get(u));
    }
    z.eat(plant1);
   /*for (int y = 0; y < plants.size(); y++) {
     z.eat(plants.get(y));
   }*/
  }
  if (frameCount%360==1) {
    Suns.add(new Sun());
  }
  if (frameCount%int(random(600, 1000))==1) {
    zombies.add(new zombie(int(random(4))));
  }
}




void SunRender() {
  for (int i=0; i<Suns.size(); i++) {
    Sun s=Suns.get(i);
    s.render(i);
    s.clicked(i);
  }
  //remove suns
  antiLag.sort();
  for (int i=0; i<antiLag.size(); i++) {
    antiLag.sub(i, i);
    Suns.remove(antiLag.get(i));
  }
  antiLag.clear();
}
