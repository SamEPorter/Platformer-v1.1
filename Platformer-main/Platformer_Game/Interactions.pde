void keyPressed() {
 if (key == 'w' || key == 'W') wkey = true; 
 if (key == 'a' || key == 'A') akey = true; 
 if (key == 's' || key == 'S') skey = true; 
 if (key == 'd' || key == 'D') dkey = true; 
 if (keyCode == UP) upkey = true; 
 if (keyCode == DOWN) downkey = true; 
 if (keyCode == LEFT) leftkey = true; 
 if (keyCode == RIGHT) rightkey = true; 
}

void keyReleased() {
 if (key == 'w' || key == 'W') wkey = false; 
 if (key == 'a' || key == 'A') akey = false; 
 if (key == 's' || key == 'S') skey = false; 
 if (key == 'd' || key == 'D') dkey = false; 
 if (keyCode == UP) upkey = false; 
 if (keyCode == DOWN) downkey = false; 
 if (keyCode == LEFT) leftkey = false; 
 if (keyCode == RIGHT) rightkey = false; 
}

void mouseReleased() {
  if (mode == game) {
    gameClicks();
  
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  }
}
