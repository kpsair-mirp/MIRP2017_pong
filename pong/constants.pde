// Display Size
int displayWidth = 500, displayHeight = 500;

// Velocity Cnstants
float Ball_Velocity = 2000; //This is the MAX speed of the ball.
float Paddle_Velocity = 10;

 // background color


// Ball parameters

 // ballVx is always BALL_VELOCTY or -BALL_VELOCITY; ballVy varies.


// Y - position of Left and Right paddles
float leftPaddle=displayHeight/2, rightPaddle=displayHeight/2;
// Paddle Dimensions
float paddleLength = 180, paddleWidth = 20;
color paddleColor = 0;

// Score Variables
int leftScore, rightScore;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';

// Controls for the Right Paddle
char RIGHT_UP = 'k', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 's';

// Keyoard Handling Booleans
boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;