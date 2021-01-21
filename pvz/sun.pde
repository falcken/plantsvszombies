class Sun {
  PVector location;
  PVector velocety;
  float distance;
  int d=25;
  int lifetime= 60*8;
  int time;
  color sColor = color(255, 255, 0);

  Sun() {
    location = new PVector (random(width/3, width*2/3), 0);
    velocety = new PVector (random(-2, 2), random(1, 2));
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
    else if (time >lifetime*9/10) tint(255, 0, 0);
    //edge colision
    if (0>location.x-d/2 || location.x+d/2>width) {
      velocety.x=velocety.x*-1;
      
    }
    rect(location.x+10,location.y+10,150,150);
    image(sunSprite,location.x,location.y);
    noTint();
    
  }
  
  }
