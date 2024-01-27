void game() {
  if (MapNum == 1) {
    if (skey) {
      enemies.clear();
      terrain.clear();
      loadWorld(map2);
      loadPlayer();
      player.setPosition(2300, 512);
    }
  }
}

void gameClicks() {
  if (MapNum == 1) {
    if (mouseX > width/5-70 && mouseX < width/5+70 && mouseY > height/2-35 && mouseY < height/2+35) {
      enemies.clear();
      terrain.clear();
      loadWorld(TutWorld);
      loadPlayer();
      player.setPosition(70, 450);
      player.setVelocity(0, 0);
    }

    if (mouseX > width/2-70 && mouseX < width/2+70 && mouseY > height*2/3-35 && mouseY < height*2/3+35) {
      if (WinC >= 1) {
        enemies.clear();
        terrain.clear();
        loadWorld(map2);
        loadPlayer();
        // player.setPosition(160, 512);
        player.setPosition(2300, 512);
      }
    }

    if (mouseX > width*4/5-70 && mouseX < width*4/5+70 && mouseY > height/2-35 && mouseY < height/2+35) {
      if (WinC >= 2) {
        enemies.clear();
        terrain.clear();
        loadWorld(LevelSelect);
        loadPlayer();
        player.setPosition(10, 500);
      }
    }
  }
}

////  if (MapNum == 1) {
////    if (mouseX > width/2 && mouseY < height/2) {
//enemies.clear();
//terrain.clear();
//    loadWorld(TutWorld);
//    loadPlayer();
//    player.setPosition(2000, 450);

//////  }

//////  if (MapNum == 3) {
//////    if (mouseX < width/2 && mouseY < height/2) {
////enemies.clear();
////terrain.clear();
////    loadWorld(map);
//    loadPlayer();
//    player.setPosition(width/2, height/2);
////  }
////  }

////  if (MapNum == 2) {
//    if (mouseY > height/2) {
//enemies.clear();
//terrain.clear();
//    loadWorld(LevelSelect);
//    loadPlayer();
//    player.setPosition(10, 500);
//  }

////  }
//}
