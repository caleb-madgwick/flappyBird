float buttonWidth = 150;
float buttonHeight = 35;

void button(String function, float xPos, float yPos) {
  textFont(createFont("Arial", 15));        
  strokeWeight(3);
  stroke(0);
  fill(255);
  rect(xPos-buttonWidth/2, yPos, buttonWidth, buttonHeight); //while rect with black border for button
  noStroke();
  if (mouseX>xPos-buttonWidth/2 && mouseX <xPos+buttonWidth/2 && mouseY>yPos && mouseY <yPos+buttonHeight) 
    fill(210, 87, 19);
  else
    fill(230, 97, 29);
  rect((xPos)-(buttonWidth/2-5), yPos+5, buttonWidth-10, buttonHeight-10); // Orange center for button
  fill(255);
  text(function, xPos, yPos+22); // white text for button

  if (mousePressed && mouseX>xPos-buttonWidth/2 && mouseX <xPos+buttonWidth/2 && mouseY>yPos && mouseY <yPos+buttonHeight) {
    if (function.equals("EASY") && startMenuScreen) { //sets mode to easy
      startMenuScreen = false;
      easy = true;
    } else if (function.equals("MEDIUM") && startMenuScreen) { //sets mode to medium
      startMenuScreen = false;
      medium = true;
    } else if (function.equals("HARD") && startMenuScreen) { //sets mode to hard
      startMenuScreen = false;
      hard = true;
    } else if (function.equals("QUIT") && alive==false) {//quits the game
      exit();
    } else if (function.equals("RESTART") && alive==false) { //sets values to the original and restarts the game in the current game mode
        evilXPos=random(2000, 3000);
  evilYPos=random(200, 400);
      birdYPos = 280;
      currentXPos = 220;
      score = 0;
      alive = true;
      start = false;
      slowMode=false;
      yDistBetweenPipes = 160;
      angle = -0.15;
    } else if (function.equals("MENU") && alive==false) { //sets values to the original again but returns to the menu screen
      birdYPos = 280;
        evilXPos=random(2000, 3000);
  evilYPos=random(200, 400);
      currentXPos = 220;
      score = 0;
      alive = true;
      start = false;
      angle = -0.15;
      easy = false;
      medium = false;
      hard = false;
      slowMode=false;
      startMenuScreen = true;
      yDistBetweenPipes = 160;
      delay(150); // delay or else it will register as menu and then medium are clicked at the same time
    }
  }
}
