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


        if (player.getX() < 1675 && player.getX() > 1643) {
          WAtmr = 130;
        }

        if (player.getX() < 2000 && player.getX() > 1968) {
          WAtmr = 130;          
        }

        if (player.getX() < 2640 && player.getX() > 2608) {
          WAtmr = 130;
        }
        
        if (player.getX() < 1136 && player.getX() > 1104) {
          WAtmr = 130;
        }
        
        if (player.getX() < 3024 && player.getX() > 2992) {
          WAtmr = 130;
        }
        
        
        
      }
      if (WAtmr == 65) {
        if (player.getX() < 1675 && player.getX() > 1643) {
          player.setPosition(1984, 527);
        }
        if (player.getX() < 2000 && player.getX() > 1968) {
          player.setPosition(1664, 495);
        }
        
        if (player.getX() < 1136 && player.getX() > 1104) {
          player.setPosition(1120, 210);
        }

        if (player.getX() < 2640 && player.getX() > 2608) {
          enemies.clear();
          terrain.clear();
          loadWorld(map2_2);
          loadPlayer();
          player.setPosition(126, 374);
        }
        
        if (player.getX() < 3024 && player.getX() > 2992) {
          enemies.clear();
          terrain.clear();
          loadWorld(map3_2);
          loadPlayer();
          player.setPosition(128, 469);
        }
      }
    }
  }
}
