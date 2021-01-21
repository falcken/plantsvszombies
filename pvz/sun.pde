class Sun {
  PVector location;
  PVector velocety;
  float distance;
  int d=25;
  int lifetime= 60*5;
  int time;
  color sColor = color(255, 255, 0);

  Sun() {
    location = new PVector (random(width/3, width*2/3), 0);
    velocety = new PVector (random(-2, 2), random(1, 2));
    distance = random (height/3, height*2/3);
  }

  void display() {
    fill (sColor);
    ellipse(location.x, location.y, d, d);
  }

  void update(int i) {
    location.add(velocety);
    time++;
    if (distance<location.y) {
      velocety.x=0;
      velocety.y=0;
    }
    if (time>lifetime) antiLag.append(i);
    else if (time >lifetime*9/10) sColor = color(255, 0, 0);
  }

  void checkEdge() {

    if (0>location.x-d/2 || location.x+d/2>width) {
      velocety.x=velocety.x*-1;
    }
  }

}
