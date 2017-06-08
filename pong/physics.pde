 void updateBallVelocity()
 {
   ballVy += gravity;

  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
   //Resolving Collisions with floor(bottom wall);
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
  if (ballX > displayWidth-ballRadius){
    ballX = displayWidth-ballRadius;
    ballVx *= -restitutionCoeff;
  }
     //Resolving Collisions with floor(bottom wall);
  if (ballX > displayWidth-ballRadius){
    ballX = displayWidth-ballRadius;
    ballVx *= -restitutionCoeff;
  }
  if (ballX <= ballRadius){
    ballX = ballRadius;
     rightLose() ;
    ballVx *= -restitutionCoeff;
  }
  if (ballY >= displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
       leftLose();
    ballVy *= -restitutionCoeff;
  }
  if (ballY < ballRadius){
    ballY = ballRadius;
    ballVy *= -restitutionCoeff;
  }
//Resolve Collisions with all  other walls;





if(ballX < paddleWidth+ballRadius && ballY > leftPaddle && ballY < leftPaddle + paddleLength)
{
  ballVx *= -1;
  ballX = paddleWidth+ballRadius;
}

if(ballX > displayWidth-paddleWidth-ballRadius && ballY > rightPaddle && ballY < rightPaddle + paddleLength)    
{
   ballVx *= -1;
  ballX = displayWidth-paddleWidth-ballRadius;
}
//if (ballX < ballRadius)
 
// if (ballX > displayWidth-ballRadius)


}