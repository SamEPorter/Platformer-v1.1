class FGoomba extends FGameObject {
 int direction = L;
 int speed = 50;
 int frame = 0;
 
 FGoomba(float x, float y) {
   
  super();
  setPosition(x, y);
  setName("goomba");
  setRotatable(false);
 }
 
 void act() {
  animate();
  collide();
  move();
 }

void animate() {
 if (frame >= goomba.length) frame = 0;
 if (frameCount % 8 == 0) {
   if (direction == R) attachImage(goomba[frame]);
   if (direction == L) attachImage(reverseImage(goomba[frame]));
   frame++;
 }
}

void collide() {
  if (isTouching("wall")) {
    direction *= -1;
    setPosition(getX()+direction, getY());
  }
  
 
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
  float vy = getVelocityY();
  setVelocity(speed*direction, vy);
  
}

}
