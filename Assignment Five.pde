float x = 370;
float y = 30;
float w = 150;
float h = 80;
float X=50;
float Y=350;
float W=100;
float H=100;
int radius=0;

int length=300;

boolean rectIsShrinking = true;
boolean ellipseIsShrinking = false;
void setup(){
 size(600,600);
 background(255);
 stroke(0);
 noFill();
}

void draw(){
 background(255);
 rect(x,y,w,h);
 fill(255);
 if(mousePressed){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
   println("The mouse is pressed");
   fill(0,170,0);
  rect(width/2, height/2, length, length);
  if (rectIsShrinking) length++;
  else length--;
  if (length == 150 || length == 300) rectIsShrinking = !rectIsShrinking;
  fill(0, 170, 0);
  rect(width/2, height/2, length, length);
  if (rectIsShrinking) length--;
  else length--;
  if (length == 150 || length == 300) rectIsShrinking = !rectIsShrinking;
  String s = "Welcome to dimension #2!";
fill(50);
textSize(40);
text(s, 10, 40, 300, 300);
  
  fill(0, 170, 0);
  ellipse(width/2, height/2, radius, radius);
  
  if (ellipseIsShrinking) radius--;
  else radius++;
  
  if (radius == 0 || radius == 150) ellipseIsShrinking = !ellipseIsShrinking;
  }
 }
 ellipse(100,400,100,100);
 if(mousePressed){
  if(mouseX>X && mouseX <X+W && mouseY>Y && mouseY <Y+H){
   println("The mouse is pressed");
    ellipse(width/3, height/2, radius, radius);
    ellipse(width/2, height/4, radius, radius);
  if (ellipseIsShrinking) radius--;
  else radius++;
  
  if (radius == 0 || radius == 150) ellipseIsShrinking = !ellipseIsShrinking;
  fill(0,200,0);
  String s = "Welcome to our planet!";
fill(50);
textSize(20);
text(s, 385, 40, 150, 150);
 String x = "You!";
fill(50);
textSize(16);
text(x, 85, 390, 300, 300);
}
fill(200,0,300);
 }
}
