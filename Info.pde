boolean mainSlide = true;
void info() {
  strokeWeight(3);
  stroke(0);
  fill(255);// the button to go back to the main menu
  rect(30-30/2, 30, 75, 30); //while rect with black border for button
  noStroke();
  if (mouseX>20 && mouseX <20+75 && mouseY>30 && mouseY <30+30) 
    fill(210, 87, 19);
  else
    fill(230, 97, 29);
  rect((30)-(30/2-5), 30+5, 75-10, 30-10); // Orange center for button
  fill(255);
  stroke(255);
  triangle(30, 45, 40, 40, 40, 50);
  line(30, 45, 70, 45);

  if (mousePressed && mouseX>20 && mouseX <20+75 && mouseY>30 && mouseY <30+30) // if button is pressed go back to the main menu
    infoScreen=false;

  textFont(createFont("Impact", 50));   // title     
  fill(0);
  text("GAME INFO", width/2, height/2-175);
  fill(255);
  text("GAME INFO", width/2+3, height/2-175-3);

  fill(222, 215, 152);
  stroke(0);
  rect(width/2-150, height/2-150, 300, 250, 10);// box that encloses text
  if (mainSlide) {

    fill(20); //prints out the app info
    textFont(createFont("HelveticaNeue-Bold", 13));   
    textAlign(CENTER);
    text("This game is inspired by the viral app ", width/2, height/2-125);
    text("Flappy Bird developed by Dong Nguyen.", width/2, height/2-105);
    text("The game is very simple.", width/2, height/2-85);
    text("Select a game mode: easy, medium or hard.", width/2, height/2-65);
    text("From there, you need to use a combination of", width/2, height/2-45);
    text("gravity and flapping (mouseclick or keypress)", width/2, height/2-25);
    text("to achieve the highest score you can.", width/2, height/2-5);
    text("Avoid flying into the pipes and stay off", width/2, height/2+15);
    text("of the ground or it will be game over.", width/2, height/2+35);
    text("Also watch out for evil flappy bird!", width/2, height/2+55);
    text("Good Luck !", width/2, height/2+85);


    if (mouseX>width-30 && mouseX <width-10 && mouseY>height/2-80 && mouseY <height/2-20)
      fill(230);
    else
      fill(255);
    strokeWeight(2);
    triangle(width-10, height/2-50, width - 30, height/2-80, width - 30, height/2-20);
    if (mousePressed && mouseX>width-30 && mouseX <width-10 && mouseY>height/2-80 && mouseY <height/2-20) // if button is pressed go back to the main menu
      mainSlide=false;
  } else {
    fill(255);
    stroke(0); 
    ellipse(width/2-70, height/2-75, 35, 35); //draws the coin 
    strokeWeight(2);
    point(width/2-70, height/2-75);
    point(width/2-70+12, height/2-75);
    point(width/2-70-12, height/2-75);
    point(width/2-70, height/2-75+12);
    point(width/2-70, height/2-75-12);
    point(width/2-70+8, height/2-75+8);
    point(width/2-70-8, height/2-75-8);
    point(width/2-70-8, height/2-75+8);
    point(width/2-70+8, height/2-75-8);
    line(width/2-70, height/2-75, width/2-70+10, height/2-75+2);
    line(width/2-70, height/2-75, width/2-70-5, height/2-75+5);

    fill(255, 255, 0);
    ellipse(width/2+70, height/2-75, 35, 45); //draws the coin 
    ellipse(width/2+70, height/2-75, 25, 35);
    rect(width/2+70-5, height/2-75-13, 10, 26);

    strokeWeight(12);
    stroke(0, 0, 255, 100); //draws the laser
    line(width/2, height/2+10, width/2, height/2+40);
    stroke(0, 0, 255);
    strokeWeight(4);
    line(width/2, height/2+10, width/2, height/2+40);


    fill(0);
    textFont(createFont("HelveticaNeue-Bold", 20));  
    text("Power Ups", width/2, height/2-125);
    textSize(12);
    text("Fly into coins\nto zoom ahead", width/2+70, height/2-25);
    text("Fly into clocks\nto slow down", width/2-70, height/2-25);
    text("Flying through a blue laser beam \n will flip your orientation", width/2, height/2+65);

    stroke(0);
    if (mouseX>10 && mouseX <30 && mouseY>height/2-80 && mouseY <height/2-20)
      fill(230);
    else
      fill(255);
    strokeWeight(2);
    triangle(10, height/2-50, 30, height/2-80, 30, height/2-20);
    if (mousePressed && mouseX>10 && mouseX <30 && mouseY>height/2-80 && mouseY <height/2-20)  // if button is pressed go back to the main menu
      mainSlide=true;
  }
}
