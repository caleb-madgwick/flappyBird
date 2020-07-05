float groundLevel = 470;
float birdDiam = 35; 
float birdXPos = 100;
float pipeWidth =60;
float yDistBetweenPipes = 160;
float pipeHeight = 30;

void pipes(float xPosPipe, float yPosPipe) {

  stroke(118, 104, 89); //near black
  strokeWeight(3);
  fill(116, 191, 46); //green

  rect(currentXPos+xPosPipe, yPosPipe, pipeWidth-10, groundLevel+10-yPosPipe); //bottom end
  rect(currentXPos-5+xPosPipe, yPosPipe-20, pipeWidth, pipeHeight); //bottom main pipe
  rect(currentXPos+xPosPipe, -200, pipeWidth-10, yPosPipe+70); //top end
  rect(currentXPos-5+xPosPipe, yPosPipe-yDistBetweenPipes, pipeWidth, pipeHeight); //top main pipe
  //collision detection
  if (birdYPos > groundLevel) // if bird hits ground
    alive = false;
  else if (powerUpCollision == true && (xPosPipe+currentXPos-5 <= birdXPos+birdDiam/2  && birdXPos-birdDiam/2 <= xPosPipe+currentXPos+pipeWidth-5)&&(yPosPipe-20 <= birdYPos+birdDiam/2  || birdYPos-birdDiam/2<= yPosPipe-yDistBetweenPipes+30))
    alive = false;
}
