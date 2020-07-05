PVector[] pipesStartPts = new PVector[100] ;
PVector[] pipesStartPtsMED = new PVector[100] ;
PVector[] pipesStartPtsHARD = new PVector[100] ;
PVector[] coins = new PVector[10] ;
PVector[] clocks = new PVector[10] ;
PVector[] evilBirds = new PVector[3];
ArrayList<Float> flippedXValues = new ArrayList<Float>();
float birdYPos = 280;
float currentXPos =  300;
int score = 0;
boolean alive = true;
boolean start = false;
int time = 0;
float xPosGrad =0;
boolean night = false;
boolean flap =false;
float speed = 3;
float gravity =0.2;
float bounceHeight = 30;
float angle = -0.15;
float angleTime;
float nightTime;
boolean easy = false;
boolean medium = false;
boolean hard = false;
boolean startMenuScreen = true;
boolean powerUp = false;
boolean powerUpCollision = true;
float powerUpTime;
int currentScore;
boolean infoScreen = false;
boolean slowMode = false;
float powerUpDist;
float evilYPos;
float evilXPos;



void setup() {
  size(400, 600); //size can be changed and everything will be adjusted accordingly  s
  for ( int i=0; i < 100; i+=1 ) { // randomly generates the heights of the pipes while constantly increasing the x position
    pipesStartPts[i]=new PVector( i*200, random(200, 400) ) ; //easy
    pipesStartPtsMED[i]=new PVector( i*175, random(225, 375) ) ; //medium
    pipesStartPtsHARD[i]=new PVector( i*150, random(250, 350) ) ; //hard
  }

  for ( int i=0; i < 10; i+=1 ) { // randomly generates the heights of the pipes while constantly increasing the x position
    coins[i] = new PVector( 0, random(200, 400) ) ;
  }
  for ( int i=0; i < 10; i+=1 ) { // randomly generates the heights of the pipes while constantly increasing the x position
    clocks[i] = new PVector( 0, random(200, 400) ) ;
  }
  for (int i =1; i <6; i+=1) {
    flippedXValues.add(i*random(2000, 3000));
  }
  evilXPos=random(2000, 3000);
  evilYPos=random(200, 400);
}

void draw() {
  for (int i =0; i <5; i+=1) {
    if (flippedXValues.get(i)+currentXPos-5 <= birdXPos+birdDiam/2  && birdXPos-birdDiam/2 <= flippedXValues.get(i)+currentXPos+450 && alive) {
      rotate(radians(180));
      translate(-400, -600);
    }
  }
  if (currentScore+4 ==score) {
    powerUp = false;
    slowMode=false;
    powerUpTime = millis() + 400; //waits before the after the power up has ended before collision detection
  }
  if (powerUp == false && millis()>powerUpTime) {
    powerUpCollision = true;
  }
  //powerUpCollision = false; //removes the colision deteciton for testing
  bg();

  textAlign(CENTER);
  if (infoScreen)
    info();
  else if (startMenuScreen)
    startMenu();
  else if (easy || medium || hard)
    gameMode();
} 

void mousePressed() {
  mouseKeyPressed();
}

void keyPressed() {
  mouseKeyPressed();
}
