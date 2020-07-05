void gameMode() {

  if (start == false && startMenuScreen == false || powerUp==true) { //bird flies along while the game has not started yet

    angle = -0.15;
    bird();
    birdYPos = birdYPos + 1 ; 
    if (millis()>time) {
      time = millis() + 231;
      birdYPos -= 14;
    }
  } else if (alive && powerUp==false) {
    bird();
    evilBird();
    birdYPos = birdYPos + speed; // has bird falling at speed with gravity added
    speed = speed + gravity;
    if (millis()>angleTime) // waits a second before angling the bird towards the ground
      angle += 0.03;
    if (flap) { // if the mouse is clicked then the bird jumps up the bounce height and the speed of which it is falling is set to 0
      birdYPos-=bounceHeight;
      speed=0;
    }
    flap=false; //sets the flap back to false as the bird is no longer flapping/ jumping up 
    //draws the pipes
    for ( int i=(width/100/2); i < 100; i+=1 ) { // ensures that the pipes always start outside the frame
      if (easy)
        pipes(pipesStartPts[i].x, pipesStartPts[i].y);
      else if (medium)
        pipes(pipesStartPtsMED[i].x, pipesStartPtsMED[i].y);
      else {
        yDistBetweenPipes = 140;
        pipes(pipesStartPtsHARD[i].x, pipesStartPtsHARD[i].y);
      }
    }
    //poweups
    if (easy)
      powerUpDist = 200;
    else if (medium)
      powerUpDist = 175;
    else if (hard)
      powerUpDist = 150;
    //coins to zoom ahead 5
    for ( int i=1; i < 10; i+=1 ) { 
      coin(i*(powerUpDist*10)+(powerUpDist/2+25), coins[i].y); // draws the coins using the PVector values
      if (slowMode==false)//slows down the speed to be used as an advantage or a disadvantage
        clock(i*(powerUpDist*10)+(powerUpDist/2+25)+(powerUpDist*5), clocks[i].y); // draws the coins using the PVector values
    }
  }
  if (powerUp==true)
    currentXPos-=8;
  else if (alive && start) 
    if (slowMode)
      currentXPos-=1;
    else if (easy)
      currentXPos-=2; //moves the pipes to the left
    else if (medium || hard)
      currentXPos-=3.5;

  if (easy)
    score = int(-(currentXPos+(100*(width/100)-240))/200); //calculate score based on position
  else if (medium)
    score = int(-(currentXPos+(87.5*(width/100)-240))/175); //calculate score based on position
  else
    score = int(-(currentXPos+(75*(width/100)-240))/150); //calculate score based on position

  textFont(createFont("Arial", 40));        
  fill(255);
  if (alive && start && score>=0)
    text(score, width/2, 60); //only prints the score if it is 0 or greater
  if (alive==false) {
    restartQuit(); // if bird dies from touching pipes then go to restart quit screen
  }
  if (score % 10 == 0 && score > 1)
    if (millis()>nightTime) {
      nightTime = millis() + 10000 ;
      night = !night; //dark mode above 10
    }
}
