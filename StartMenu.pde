void startMenu() {

  textFont(createFont("Impact", 62));        
  fill(0);
  text("FLAPPY BIRD", width/2, 125);
  fill(255);
  text("FLAPPY BIRD", width/2+3, 125-3);
  button("EASY", width/2, 180);
  button("MEDIUM", width/2, 250);
  button("HARD", width/2, 320);

  stroke(0, 100, 255); //info button 
  if (mouseX> 30 && mouseX < 60 && mouseY>height-60 && mouseY <height-30 && startMenuScreen) 
    fill(0, 155, 255);
  else
    fill(0, 175, 255);
  rect(30, height-60, 30, 30, 5);
  fill(255);
  textFont(createFont("Cambria-BoldItalic", 27));
  text("i", 45, height-35);
  if (mousePressed && mouseX> 30 && mouseX < 60 && mouseY>height-60 && mouseY <height-30 && startMenuScreen) //goes to the information screen from this menu
    infoScreen=true;
}
