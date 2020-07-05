void restartQuit() {

  button("RESTART", width/3-15, 320);
  button("QUIT", 2*width/3+15, 320);
  button("MENU", width/2, 260);

  //Score
  fill(222, 215, 152);
  stroke(0);
  rect(width/2-45, 120, 90, 120, 10); //outter rectangle with rounded edges
  textSize(20);
  fill(250, 120, 93);
  text("SCORE", width/2, 150); //score title in pink text
  textSize(55);
  fill(255);
  if (score<0)score=0;
  text(score, width/2, 210); //displays the users final score with white text

  //title
  textFont(createFont("Impact", 50));        
  fill(0);

  text("GAME OVER", width/2, 85);
  fill(255);
  text("GAME OVER", width/2+3, 85-3);
}
