void bird() {
  pushMatrix();
  translate(100, birdYPos); //makes the birds x pos constant (100) and variable Y pos
  rotate(angle); // angle the bird faces

  fill(249, 241, 36);
  stroke(118, 104, 89);
  strokeWeight(2) ;
  ellipse(0, 0, 35, 35); //body

  ellipse(-14, 5, 18, 15); //wing

  fill(255, 255, 255);
  ellipse(10, -8, 16, 19); //eye

  fill(253, 104, 75);
  ellipse(10, 7, 20, 10); //mouth oval
  line(7, 7, 20, 7); //mouth line

  strokeWeight(5) ;
  point(13, -7); //pupil

  popMatrix();
}
