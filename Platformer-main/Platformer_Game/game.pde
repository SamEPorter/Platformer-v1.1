void game() {
 //println(MapNum);
}

void gameClicks() {
  if (MapNum == 1) {
    if (mouseX > width/2 && mouseY < height/2) {   
enemies.clear();
terrain.clear();
    loadWorld(TutWorld);
    loadPlayer();
    player.setPosition(2000, 450);
  }
  }
  
  if (MapNum == 3) {
    if (mouseX < width/2 && mouseY < height/2) {
enemies.clear();
terrain.clear();
    loadWorld(map);
    loadPlayer();
    player.setPosition(width/2, height/2);
  }
  }
  
  if (MapNum == 2) {
    if (mouseY > height/2) {
enemies.clear();
terrain.clear();
    loadWorld(LevelSelect);
    loadPlayer();
    player.setPosition(10, 500);
  }

  }
}
