class FPlayer extends FGameObject {

  FBox feet;
  FBox rightSide;
  FBox leftSide;

  int frame;
  int direction;


  FPlayer() {

    super();
    noStroke();
    frame = 0;
    direction = R;
    setPosition(width/2, height/2);
    
    setRotatable(false);
    setFillColor(gray);
    setRestitution(0);
    setName("player");

    feet = new FBox(26, 8);
    feet.attachImage(transparent);
    feet.setRotatable(false);
    feet.setSensor(true);
    feet.setStatic(false);
    feet.setFillColor(white);

    rightSide = new FBox(6, 16);
    rightSide.attachImage(transparent);
    rightSide.setRotatable(false);
    rightSide.setSensor(true);
    rightSide.setStatic(false);
    rightSide.setFillColor(white);

    leftSide = new FBox(6, 16);
    leftSide.attachImage(transparent);
    leftSide.setRotatable(false);
    leftSide.setSensor(true);
    leftSide.setStatic(false);
    leftSide.setFillColor(white);

    world.add(this);
    world.add(feet);
    world.add(rightSide);
    world.add(leftSide);
  }

  void act() {
    handleInput();
    animate();
    collisions();
  }

  void handleInput() {
    float vy = getVelocityY();
    float vx = getVelocityX();

      

    if (direction == R) {
      vx = min(vx, 175);
    } else vx = max(vx, -175);
    
    if (canMove == true) {

    if (canJump == true) {
      action = idle;
    }
    if (akey) {
      if (canJump == false) {
        setVelocity(vx-10, vy);
      } else setVelocity(vx-40, vy);
      action = run;
      direction = L;
    }
    if (dkey) {
      if (canJump == false) {
        setVelocity(vx+10, vy);
      } else setVelocity(vx+40, vy);
      action = run;
      direction = R;
    }

      HJ--;
      HJ = max(HJ, 0);

    if (wkey) {
      if (canJump == true) {
        vx = getVelocityX();
        setVelocity(vx, -450);
        WJT = 30;
        HJ = 18;
      } else if (canJump == false) {
       if (rsJump == true && WJT == 0) {
        setVelocity(-240, -350);
      } else if (lsJump == true && WJT == 0) {
        setVelocity(240, -350);
      } else if (lsJump == true && rsJump == true && WJT == 0) {
       setVelocity(vx, -450); 
      }
      if (HJ == 8 && wkey) {
       setVelocity(vx, -330); 
      }
      if ( HJ == 2 && (wkey)) {
        setVelocity(vx, -250);
      }
      }
    }

      //println(getVelocityX());

    if (abs(vy) > 0.3)
      action = jump;
      
    }
  }


  void collisions() {
    

    float x = getX();
    float y = getY();

    float vy = getVelocityY();
    float vx = getVelocityX();

    feet.setPosition(x, y+16);
    feet.setVelocity(getVelocityX(), getVelocityY());

    ArrayList<FContact> fcontacts = feet.getContacts();
    if (fcontacts.size() >2) {
      
      canJump = true;
    } else canJump = false;
    // println(fcontacts.size());


    rightSide.setPosition(x+14, y);
    rightSide.setVelocity(getVelocityX(), getVelocityY());
if (WJT == 0) {
    ArrayList<FContact> rscontacts = rightSide.getContacts();
    if (rscontacts.size() >3) {
      if  (fcontacts.size() < 3) {
        if (dkey) {
          player.setVelocity(vx, 90);
          HJ = 0;
          rsJump = true;
        }
      }
    } else rsJump = false;
  }
    if (canJump == true && rsJump == true) {
      rsJump = false;
    }
  


    leftSide.setPosition(x-14, y);
    leftSide.setVelocity(getVelocityX(), getVelocityY());
 if (WJT == 0) {
    ArrayList<FContact> lscontacts = leftSide.getContacts();
    if (lscontacts.size() >3) {
      if  (fcontacts.size() < 3) {
        if (akey) {
          player.setVelocity(vx, 90);
          HJ = 0;
          lsJump = true;
        }
      }
    } else lsJump = false;
  }
    
    if (canJump == true && lsJump == true) {
      lsJump = false;
    }
    
    WJT--;
    WJT = max(WJT, 0);
    
    
    
     if (isTouching("Hammer")) {
      player.setPosition(120, 0);
      player.setVelocity(0, 0);
     }
  }

  void animate() {

    if (frame >= action.length) frame = 0;
    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(action[frame]);
      if (direction == L) attachImage(reverseImage(action[frame]));
      frame++;
    }
  }
}
