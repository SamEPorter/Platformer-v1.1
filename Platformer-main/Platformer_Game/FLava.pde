class FLava extends FGameObject {
 
  FLava(float x, float y) {
   super(1, 1, 1, 2);
   setPosition(x, y);
   setStatic(true);
   setName("lava");
   attachImage(lava);
  }
  
  void act() {
    if (isTouching("player")) {
     player.setPosition(10, 750);
     //setGravity( 
    }
    
  }
  
  
}
