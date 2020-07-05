void flipLine(float xPos) {
    strokeWeight(12);
    stroke(0,0,255,100);
    line(xPos+currentXPos,-200,xPos+currentXPos,height-100);
    stroke(0,0,255);
    strokeWeight(4);
    line(xPos+currentXPos,-200,xPos+currentXPos,height-100);
    strokeWeight(12);
    stroke(0,0,255,100);
    line(xPos+currentXPos+500,-200,xPos+currentXPos+500,height-100);
    stroke(0,0,255);
    strokeWeight(4);
    line(xPos+currentXPos+500,-200,xPos+currentXPos+500,height-100);
    noStroke();
}
