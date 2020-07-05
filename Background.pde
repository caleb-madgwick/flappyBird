void bg() {
  noStroke();
  if (night) {
    background(19, 134, 148); //Night sky
    fill(255);
    randomSeed(0);
    for (int i =0; i <24; i++)
      ellipse(random(0, width), random(0, height-230), 2, 2);
  } else
    background(113, 197, 207); //DayTime sky

  if (night)
    fill(28, 178, 197);
  else
    fill(235, 252, 220);
  for (int i =0; i <=width+80; i+=80) //clouds
    ellipse(i, 430, 100, 100);

  if (night)
    fill(22, 160, 25);
  else
    fill(132, 226, 140);
  for (int i =0; i <=width+50; i+=50)  // bushes
    ellipse(i, 470, 70, 70);
    
  if (alive) {  
    for (int i =0; i <5; i+=1){
      flipLine(flippedXValues.get(i));
    }
  }

  fill(221, 216, 148);
  rect(0-width, 500, width*2, height-500); //ground

  fill(142, 212, 72);
  stroke(118, 104, 89);
  strokeWeight(3);
  rect(-10-width, 480, width*2+10, 20); // seperator

  fill(151, 229, 86);
  noStroke();
  for (int i =0; i<200000; i+=20) // gradient 
    rect(i+xPosGrad, 483, 10, 15);
  if (powerUp==true)
    xPosGrad-=8;
  else { //moves gradient rects to the left without moving pipes at same time
    if (slowMode ==true)
      xPosGrad-=1;
    else if (medium || hard)
      xPosGrad-=3.5;
    else
      xPosGrad-=2;
    
  }
}
