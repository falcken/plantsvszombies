class GameOverScreen {
  float posX, posY;
  boolean hidden = false;
  int score, seconds, minutes;

  GameOverScreen() {
  }

  void render() {
    background(255);
    score = kills*100+frameCountAtEnd/100;
    seconds = frameCountAtEnd/60%60;
    String secondsText = str(seconds);
    if (seconds < 10) secondsText = "0"+seconds;
    minutes = frameCountAtEnd/3600;
    fill(0);
    textSize(36);
    text("Game over!", 425, 200);
    textSize(24);
    text("Du overlevede i: 0"+minutes+":"+secondsText, 400, 250);
    text("Din score var: "+score, 425, 300);
  }
  
}
