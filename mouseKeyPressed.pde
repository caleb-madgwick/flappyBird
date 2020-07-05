void mouseKeyPressed() {
  //makes sure the user is not on the start menu before the game has begun and that the game mode has been selected
  if ((startMenuScreen==false) && easy || medium || hard)
    start = true;

  // if the bird is alive and the game is in progress, the bird flaps and jumps up, making the angle face up and wait before the angle begins to drop again
  if (alive) { 
    flap = true;
    birdYPos = birdYPos - speed;
    speed = speed - gravity; //makes the bird jump when the mouse is pressed
    angle = -0.15;
    angleTime = millis() + 200;
  }
}
