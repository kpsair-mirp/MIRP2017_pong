void keyPressed() {
  if (key == LEFT_UP)       left_up = true;
  if (key == LEFT_DOWN)     left_down = true;
  if (key == RIGHT_UP)      right_up = true;
  if (key == RIGHT_DOWN)    right_down = true;
  if (key == RESET)         reset = true;
  if (key == PAUSE)         pause = true;
  if (key == START)         start = true;
}

void keyReleased() {
  if (key == LEFT_UP)       left_up = false;
  if (key == LEFT_DOWN)     left_down = false;
  if (key == RIGHT_UP)      right_up = false;
  if (key == RIGHT_DOWN)    right_down = false;
  if (key == RESET)         reset = false;
  if (key == PAUSE)         pause = false;
  if (key == START)         start = false;
}

float leftPaddleincrement =  Paddle_Velocity;
float rightPaddleincrement =  Paddle_Velocity;

void detectKeys()
{
if (left_up)
leftPaddle -= Paddle_Velocity;

if (left_down)
leftPaddle += Paddle_Velocity;

if (right_up)
rightPaddle -= Paddle_Velocity;

if (right_down)
rightPaddle += Paddle_Velocity;





}