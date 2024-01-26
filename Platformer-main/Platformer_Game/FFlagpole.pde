class FFlagpole extends FGameObject {

  FFlagpole(float x, float y) {
    super(1, 1, 5, 1);
    setPosition(x-14, y-64);
    setStatic(true);
    setSensor(true);
    setName("flagpole");
    attachImage(flagpole);
  }

  void act() {

    //println(WAtmr);
    float playerY = player.getY();
    WAtmr --;
    WAtmr = max(WAtmr, 0);
    if (WA == false) {
      if (isTouching("player")) {
        player.setVelocity(0, 0);
        WA = true;
        canMove = false;
        WAtmr = 180;
        
        
      }
    }
    if (WA == true) {

      if (WAtmr >=  136) player.setPosition(getX(), playerY);
      else if (WAtmr > 0 && WAtmr < 136) {
        player.setVelocity(400, -300);
        
      } else {
       player.setVelocity(0, -16); 
      }
    }
  }
}
