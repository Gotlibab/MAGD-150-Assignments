import processing.video.*; //imports video
import processing.sound.*; //imports sound
PImage img;
Capture cam;
SoundFile file;
AudioIn input;
Amplitude analyzer;
WhiteNoise noise;

void setup(){
size(630,630);
file = new SoundFile(this, "showersound.wav"); //soundfile for shower sound
file.amp(0.90); 
img = loadImage("Mirror2.jpg"); //loads the image mirror2
cam= new Capture(this,640,480);
cam.start();
input = new AudioIn(this, 0);
input.start();
analyzer = new Amplitude(this);
analyzer.input(input);
noise = new WhiteNoise(this);
noise.play();
noise.amp(0.003); //changes the amplitude of the noise sound
}
void mousePressed(){
file.play();
}
void keyPressed(){
  cam.read(); //reads the cam on key presses
}
void draw(){
float vol = analyzer.analyze();
fill(127);
stroke(0); 
ellipse(width/4, height/3, 5+vol*100, 5+vol*100);

image(img,0,0);
filter(GRAY); //filters the image to gray
tint(150,30); //tints the image
image(cam,185,115,250,290);
}
