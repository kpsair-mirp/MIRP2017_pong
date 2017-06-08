


float MAX_VELOCITY = 100;

float bgColor = 255;

float gravity = 0.0;
float ballX, ballY;
float ballVx = 5, ballVy = 5;
float ballRadius = 10;
color ballColor = color( 0 , 60 , 255, 255);

float restitutionCoeff = 1.0;

char UP = 'w', LEFT = 'a', RIGHT = 'd', DOWN = 's';
boolean up, left, right, down;

boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  ballVx = 5;
  ballVy = 3;
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  background(bgColor);
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  resolveCollisions();
  drawPaddle() ;
  detectKeys();
  displayScore();

}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
 
}

void drawPaddle() {
  fill(paddleColor);
  
  rect(displayWidth - paddleWidth ,rightPaddle,paddleWidth , paddleLength);
  rect(0,leftPaddle,paddleWidth , paddleLength);
}
  