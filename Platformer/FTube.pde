class FTube extends FGameObject {

  FTube(float x, float y) {
    super(1, 1, 3, 2);
    setPosition(x, y);
    setStatic(true);
    setName("tube");
    attachImage(tube);
    setFriction(4);
  }

  void act() {
    //println(player.getX());
    if (isTouching("player") && player.getY() < getY()-16 && player.getX() < getX()+12 && player.getX() > getX()-12) {
      if (skey) {
        WAtmr = 130;
      }
      if (player.getX() < 1675 && player.getX() > 1643) {
        if (WAtmr == 65) player.setPosition(1984, 527);
      }
    }

    if (isTouching("player") && player.getY() < getY()-16 && player.getX() < getX()+12 && player.getX() > getX()-12) {
      if (skey) {
        WAtmr = 130;
      }
      if (player.getX() < 2000 && player.getX() > 1968) {
        if (WAtmr == 65) player.setPosition(1664, 495);
      }
    }
  }
}
