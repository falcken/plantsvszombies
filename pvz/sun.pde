class Sun {
  PVector location;
  PVector velocety;
  float distance;
  int d=150;
  int margin = 10;
  int lifetime= 360;
  int time;
  int redFade=255;

  Sun() {
    location = new PVector (random(width/3, width*2/3), 0);
    velocety = new PVector (random(-2,2), random(1, 2));
    distance = random (height/3, height*2/3);
  }

  void render(int i) {
    //update
    location.add(velocety);
    time++;
    if (distance<location.y) {
      velocety.x=0;
      velocety.y=0;
    }
    if (time>lifetime) antiLag.append(i);
    else if (time >lifetime-128) redFade-=2;
    tint(255, redFade, redFade);
    //edge colision
    if (0>location.x+margin || location.x+d+margin>width) {
      velocety.x=velocety.x*-1;
    }
    image(sunSprite, location.x, location.y);
    noTint();
  }

  void clicked(int i) {
    if (mousePressed) {
      if (mouseX>location.x+margin&&mouseX<location.x+d+margin&&mouseY>location.y+margin&&mouseY<location.y+d+margin){
      antiLag.append(i);
      shop.balance+=50;
      }
      
    }
  }
}
