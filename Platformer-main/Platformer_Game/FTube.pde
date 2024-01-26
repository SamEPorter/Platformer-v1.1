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
    int i = 0;
    i--;
    i = max(i, 0);
    if (isTouching("player") && player.getY() < getY()-16 && player.getX() < getX()+12 && player.getX() > getX()-12) {
      if (skey) {
    WAtmr = 130;
    }
    }
    
  }
  
  
}
