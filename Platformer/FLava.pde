class FLava extends FGameObject {

  FLava(float x, float y) {
    super(1, 1, 5, 9);
    setPosition(x, y);
    setStatic(true);
    setName("lava");
    attachImage(lava);
  }

  void act() {

    if (isTouching("player")) {
      if (LavaC == false) {
        player.setPosition(player.getX(), player.getY()-50);

        WAtmr = 130;
      }
      LavaC = true;
    }
    if (LavaC == true) {
      if (WAtmr > 64) player.setVelocity(0, -100);
      if (WAtmr == 64) {
        enemies.clear();
        terrain.clear();
        loadWorld(LevelSelect);
        loadPlayer();
        player.setPosition(10, 500);
        LavaC = false;
      }
    }
  }
}
