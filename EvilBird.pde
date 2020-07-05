float evilTime;

void evilBird() {
  if (dist(evilXPos, evilYPos, 100, birdYPos)<35) 
    alive=false;

  evilXPos-=5;
  evilYPos = evilYPos + 1 ; 
  if (millis()>evilTime) {
    evilTime = millis() + 231;
    evilYPos -= 14;
  }

  pushMatrix();
  translate(evilXPos, evilYPos); //makes the birds x pos constant (100) and variable Y pos
  rotate(0.2); // angle the bird faces

  fill(10);
  stroke(118, 104, 89);
  strokeWeight(2) ;
  ellipse(0, 0, 35, 35); //body

  ellipse(14, 5, 18, 15); //wing

  fill(255, 0, 0);
  ellipse(-10, -8, 16, 19); //eye

  fill(10);
  ellipse(-10, 7, 20, 10); //mouth oval
  line(-7, 7, -20, 7); //mouth line

  stroke(10);
  strokeWeight(5) ;
  line(-7, -17, -17, -12);
  point(-13, -7); //pupil

  popMatrix();
}
