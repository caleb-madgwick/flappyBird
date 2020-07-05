void clock(float coinXPos, float coinYPos) {
  if (dist(coinXPos+currentXPos, coinYPos, 100, birdYPos)<35) { //collision detection between the bird and the coin
    currentScore =score;
    slowMode = true;
  } else
    fill(255);
    stroke(0); 
    ellipse(coinXPos+currentXPos, coinYPos, 35, 35); //draws the coin 
    strokeWeight(2);
    point(coinXPos+currentXPos, coinYPos);
    point(coinXPos+currentXPos+12, coinYPos);
    point(coinXPos+currentXPos-12, coinYPos);
    point(coinXPos+currentXPos, coinYPos+12);
    point(coinXPos+currentXPos, coinYPos-12);
    point(coinXPos+currentXPos+8, coinYPos+8);
    point(coinXPos+currentXPos-8, coinYPos-8);
    point(coinXPos+currentXPos-8, coinYPos+8);
    point(coinXPos+currentXPos+8, coinYPos-8);
    line(coinXPos+currentXPos, coinYPos,coinXPos+currentXPos+10, coinYPos+2);
    line(coinXPos+currentXPos, coinYPos,coinXPos+currentXPos-5, coinYPos+5);

}
