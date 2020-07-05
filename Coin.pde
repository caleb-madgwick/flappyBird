void coin(float coinXPos, float coinYPos) {
  if (dist(coinXPos+currentXPos, coinYPos, 100, birdYPos)<35) { //collision detection between the bird and the coin
    currentScore =score;
    speed=0;
    powerUp=true;
    powerUpCollision = false;
  } else
    fill(255, 255, 0);
  ellipse(coinXPos+currentXPos, coinYPos, 35, 45); //draws the coin 
  ellipse(coinXPos+currentXPos, coinYPos, 25, 35);
  rect(coinXPos-5+currentXPos, coinYPos-13, 10, 26);
}
