class FThwomp extends FGameObject {
 
  final int sleepy = 1;
  final int fall = 2;
  final int rise = 3;
  int thwMode = sleepy;
  
  
  FThwomp(float x, float y) {
    super(2, 1);
    setPosition(x, y);
    setName("thwomp");
    setRotatable(false);
    setStatic(true);
  }
  
  
 
 
 
 void act() {
  animate();
  collide();
  move();
 }
 
 
 void animate() {
   if (thwMode == sleepy || thwMode == rise) attachImage(thwSleep);
   if (thwMode == fall) attachImage(thwMad);
 }
 
 void collide() {
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
 
 void move() {
   float playerY = player.getY();
   float playerX = player.getX();
   float x = getX();
   float y = getY();
   
   
   if (thwMode == fall) {
     setStatic(false); 
     setVelocity(0, 250);
   }
   if (thwMode == rise) {
     setStatic(false);
     setVelocity(0, -75);
   }
   if (thwMode == sleepy) {
     setStatic(true);
     setVelocity(0, 0); 
   }
   
   
   
   
   if (playerY > getY() && playerX > getX()-32 && playerX < getX()+32 && thwMode == sleepy) {
     thwMode = fall;
   }
   
   if (isTouching("wall")) thwMode = rise;
   if (isTouching("thwTop")) {
    thwMode = sleepy;
    setPosition(x, y+1);
   }
   
 }
}
