boolean flipFlopper;
int red;
int green;
int blue;
int ellipseheight = min(80,100);
int ellipsewidth = max(10,80);
float a =0.1;
float b=0.2;
void setup(){
  size (800,800);
  smooth();
  background(0);
  noStroke();
  fill(0,0,255);
  
}

void draw(){
  ellipse(mouseX, mouseY, ellipseheight,ellipsewidth);
  background(150);
  red = (red + 0) % 256;
  green = (green + 0) % 256;
  blue = (blue + 1) % 256;
  fill(red, green, blue);
    flipFlopper = !flipFlopper;
  println("flippFlopper = " + flipFlopper);
  println(dist(mouseX,mouseY,width,height));
  if (mousePressed ==true){
  ellipse(mouseX,mouseY,ellipseheight,ellipsewidth);}
  println("(" + mouseX + ", " + mouseY + ")");
  mouseY=mouseY-1;
  println(a+b-a*b/a);
}
