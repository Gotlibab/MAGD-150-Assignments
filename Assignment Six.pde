int x = 45;
int y = 45;
cool [] ball= new cool[x];
Bubble b;

void setup() {
  size(600, 600);
  noStroke();
  smooth();

  for (int i = 0; i < ball.length; i++) {
    ball[i] = new cool();
  }
 b=new Bubble();
}

void draw() {
  background(200,350,350);
  fill(255,255,255);
  for (int i = 0; i < ball.length; i++) {
    ball[i].move();
    ball[i].display();
  }
  b.ascent();
  b.display();
} 
class cool {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float bubblesize;

  //variables for the class called cool
  cool () {
    c = color(255,255,255,255);//default color
    xpos = random(600);
    ypos = random(600);
    xspeed = random(1,5);
    yspeed = random(1,5);
    bubblesize = random(20,200);
  }
  
  //movement of the bubbles.
  void move() {
    if (xpos+(bubblesize/2) > 600 || xpos-(bubblesize/2) < 0) {
      xspeed = xspeed * (-1);
    }
    if(keyPressed) {
      if(key == '1') {
        bubblesize = random(20,50);//change bubble size to small.
      }
    }
    if(keyPressed) {
      if(key == '2') {
        bubblesize = random(20,100);//change bubble size to medium.
      }
    }
    if(keyPressed) {
      if(key == '3') {
        bubblesize = random(20,200);//change bubble size to large.
      }
    }
    if (ypos+(bubblesize/2) > 600 || ypos-(bubblesize/2) < 0) {
      yspeed = yspeed * (-1);
    }
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
  }
  //bubbles
  void display() {
    fill(c);
    ellipse(xpos, ypos, bubblesize, bubblesize);
    if(keyPressed) {
      if(key == 'g') {
        c = color(15,245,55,60);//change color of bubbles to green
      }
    }
    if(keyPressed) {
      if(key == 'o'){
        c = color(245,65,0,70);//change color of bubbles to orange
      }
    }
    if(keyPressed){
      if(key == 'b'){
        c = color(120,120,270,80);//change color of bubbles to blue
      }
    }
  }
}
