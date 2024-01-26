class FPlatform extends FGameObject {
 
  FPlatform(float x, float y) {
   super(1, 1, 1, 4);
   setPosition(x, y);
   setStatic(true);
   setName("platform");
   attachImage(platform);
  }
  
  void act() {
    if (player.getY()+16 > getY()-3) {
      setSensor(true);
    } else {
     setSensor(false); 
    }
  }
  
  
}
