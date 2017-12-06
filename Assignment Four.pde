float ballX = 300;
float ballY = 0;
float h = 50;
float w = 50;
float speedY = 10;
float speedX = 10;
void setup() {
  size(600,600);
  smooth();
  noStroke();
  ellipseMode(CORNER);
}

void draw() {
  background(15);
  
  ellipse(ballX, ballY, h,h);
  speedY = speedY + 0.5;  
  ballY = ballY + speedY; 
  
  if (ballY > height - h) {
    ballY = height - h;
    speedY = speedY * -0.9;
  }
  else if (ballY <= 0) { 
    speedY = -speedY;
  }
  ellipse(ballX, ballY, h,h);
  speedX = speedX + 0.5;  
  ballY = ballY + speedX; 
  
  if (ballY > height - h) {
    ballY = height - h;
    speedX = speedX * -0.9;
  }
  else if (ballY <= 0) { 
    speedX = -speedX;
  }
   if (ballX > width - w) {
   ballX = width - w;
   speedX = speedX * -0.9;
  }
  else if (ballX <= 0) { 
    speedX = -speedX;
  }
  if (mousePressed) { 
  fill (random(25, 255), random (25, 255), random (25, 255), random (25, 255));}
  if (keyPressed) { 
  fill (random(25, 255), random (25, 255), random (25, 255), random (25, 255));}
   if(mouseX>100){
   ellipse(ballX, ballY, h,h);
   }else if(mouseY>100){
   ellipse(ballX, ballY, h,h);
   }
   ballX=ballX+1;
   for(int w=1; w<1; w++);
   while(w<1){
   noFill();
   w++;
   }
}
