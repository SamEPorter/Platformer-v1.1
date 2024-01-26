class FHammerbro extends FGameObject {
  int direction = L;
  int speed = 50;
  int frame = 0;
  float throwTmr = 0;
  FBox feet;
  FBox hmr;

  FHammerbro(float x, float y) {

    super(15, 16);
    setPosition(x, y);
    setName("hammerbro");
    setRotatable(false);

    feet = new FBox(34, 8);
    feet.attachImage(transparent);
    feet.setRotatable(false);
    feet.setSensor(true);
    feet.setStatic(false);
    feet.setFillColor(white);

    world.add(feet);
  }

  void act() {
    animate();
    collide();
    move();
    ThrowHammer();
  }

  void animate() {
    if (frame >= hammerbro.length) frame = 0;
    if (frameCount % 10 == 0) {
      if (direction == R) attachImage(hammerbro[frame]);
      if (direction == L) attachImage(reverseImage(hammerbro[frame]));
      frame++;
    }
  }

  void collide() {




    if (isTouching("player")) {
      if (player.getY() < getY()-gridSize/2) {
        world.remove(this);
        enemies.remove(this);
        player.setVelocity(player.getVelocityX(), -200);
      } else {
        player.setPosition(120, 0);
        player.setVelocity(0, 0);
      }
    }
  }

  void move() {
    float x = getX();
    float y = getY();

    feet.setPosition(x, y+16);
    feet.setVelocity(getVelocityX(), getVelocityY());

    ArrayList<FContact> fcontacts = feet.getContacts();
    if (fcontacts.size() < 5) {
      if (HBT == 0) {
        direction *= -1;
        setPosition(getX()+direction, getY());
      }
      HBT = 20;
    }
    float vy = getVelocityY();
    setVelocity(speed*direction, vy);
    
    HBT--;
    HBT = max(HBT, 0);
    
    
    
  }
  
  void ThrowHammer() {
    FBox Hammer;
    if (throwTmr == 0) {
       Hammer = new FBox(16, 16);
       Hammer.setPosition(getX(), getY()+6);
      if (player.getX() > getX()) { 
        
      Hammer.setVelocity(150, -200);
      } else {
        
        Hammer.setVelocity(-150, -200);
      }
      Hammer.attachImage(hammer);
      Hammer.setStatic(false);
      Hammer.setSensor(true);
      
      throwTmr = 60;
      Hammer.setName("Hammer");
      world.add(Hammer);
      
      
    }
    //if (dist(getX(), getY(), Hammer.getX(), Hammer.getY()) > 262) world.remove(Hammer);
    
    throwTmr--;
    throwTmr = max(throwTmr, 0);
    
  }
  
}
