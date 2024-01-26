class FBridge extends FGameObject {
 
  FBridge(float x, float y) {
   super();
   setPosition(x, y);
   setStatic(true);
   setName("bridge");
   attachImage(bridgeC);
  }
  
  void act() {
    if (isTouching("player")) {
     setStatic(false);
     setSensor(true);
     //setGravity( 
    }
    
  }
  
  
}
