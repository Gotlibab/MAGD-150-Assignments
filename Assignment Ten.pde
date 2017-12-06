PImage img;
PShape globe;
PShape box;
void setup(){
size(950,950, P3D);
surface.setResizable(true);
textureMode(NORMAL);
img = loadImage("BlackHole.jpg"); //loads the image
img.save("outputImage.jpg"); //saves the image as a jpg
background(64);
globe = createShape(SPHERE, 350);//creates the sphere
globe.setStroke(false);
globe.setTexture(img);//textures the sphere
box = createShape(BOX,350);//creates the box
box.setStroke(false);
box.setTexture(img);//textures the box
noStroke();
}

void draw(){
fill(127);
stroke(0);
background(0);
image(img, 0, 0, width, height);
wallpaper();//Wallpaper class
secondsquare(); //Jacobs
translate(width/2, height/2);
  rotate(map(mouseX, 0, width, -PI, PI));
if (mousePressed) {
    textureWrap(REPEAT); 
  } else {
    textureWrap(CLAMP);
  }
  translate(width/2, height/2);
  rotateY(map(mouseX,0,width,-PI,PI));
  rotateX(map(mouseY,0,width,-PI,PI));
  shape(globe);
   beginShape();
   if(mousePressed) {//Changes from perspective to ortho with mouse clicks
    float fov = PI/3.0; 
    float cameraZ = (height/2.0) / tan(fov/2.0); 
    perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  } else {
    ortho(-width/2, width/2, -height/2, height/2);
  }
  translate(width/2, height/2, 0);
  rotateX(-PI/6); 
  rotateY(PI/3); 
  shape(box);
  texture(img);
  vertex(-100, -100, 0, 0);
  vertex(100, -100, 2, 0);
  vertex(100, 100, 2, 2);
  vertex(-100, 100, 0, 2);
  noStroke();
  endShape();
  camera(mouseX, height/2, (height/2) / tan(PI/10), mouseX, height/2, 0, 0, 1, 0);//A camera effect which pans  with the mouse
  //all the lights in the code
  spotLight(50, 102, 125, 80, 20, 40, -1, 0, 0, PI/2, 2);
  pointLight(50, 102, 125, 35, 40, 35);//lights
  directionalLight(50, 100, 125, 0, -1, 0);//lights
  ambientLight(100, 100, 100);//lights
}
void secondsquare(){
 stroke(255);
 fill(127);
 translate(width/2,height/2);
 beginShape();
 texture(img);
 vertex(-100,-100,0,0,0);
 vertex(100,-100,0,400,0);
 vertex(100,100,0,400,400);
 vertex(-100,100,0,0,400);
 endShape();
}
void wallpaper(){  
  tint(255,255);
  image(img,0,-200);
  image(img,600,-200);
  image(img,-600,-200);
  noStroke();
  fill(255,255,255);
}
