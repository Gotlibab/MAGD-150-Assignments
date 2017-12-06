import processing.pdf.*;

PFont Castelar;
PFont Verdana;
PFont Papyrus;
PFont Impact;
import processing.pdf.*;
float x; // Horizontal movement
String typing = "";
String saved = "";
int index=0;
String[] headlines={ //moving string #1
  "JUST DO IT!", 
};
String[] headlines2={ //moving string #2
  "DO IT!",
};
  
void setup(){
beginRecord(PDF, "filename.pdf");
Castelar = createFont(PFont.list()[69], 38, true); //Castelar font and size code
Verdana = createFont(PFont.list()[373], 48, true); //Verdana font and size code
Papyrus= createFont(PFont.list()[275], 48, true); //Papyrus font and size code
Impact=createFont(PFont.list()[171], 88, true); //Impact font and size code

String[] fontList = PFont.list();
printArray(fontList);
  
String[] lines = loadStrings("http://processing.org/about/index.html");
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}
  
size(800,800);

}
void draw(){
  background(200);
  stroke(150);
  textAlign(CENTER); 
  textFont(Castelar);
  text("MAKE YOUR DREAMS COME TRUE!", width/2,150); //Static text position #1
  fill(0);
  textAlign(CENTER);
  textFont(Verdana);
  text("JUST DO THE DO!", width/2,550); //Static text position #2
  fill(0);
  textFont(Impact);
  text(headlines[index],x,100);  //Moving text #1 location
  textFont(Papyrus);
  text(headlines2[index],x,600); //Moving text #2 location
  x=x-1;
   float w = textWidth(headlines[index]);
  if (x < -w) {
    x = width; 
    index = (index + 1) % headlines.length ;
    x=x-1;
   float p = textWidth(headlines2[index]);
  if (x < -p) {
    x = width; 
    index = (index + 1) % headlines2.length ;
    x=x-1;     
    }
  }
  endRecord();
}
