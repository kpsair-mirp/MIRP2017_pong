void rightLose() {
 
 leftScore++;
   displayScore();
  }

void leftLose() {
 println(rightScore);
  rightScore++;
   displayScore();
}
void displayScore()
{
  fill(0);
  text(leftScore, displayWidth/4, displayHeight/3);
  text(rightScore, displayWidth*3/4, displayHeight/3);
 }  