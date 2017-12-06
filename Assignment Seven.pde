float angle = 20;
float treeSize = 100;
float divisor = 0.80;
float maxRandomBranchSize = 0.03;
float maxRandomAngle = 30;
float maxLevel = 16;
color trunk = #8b4513;
color leaves = #009C22 & 0x70FFFFFF;
ArrayList <PVector> points = new ArrayList <PVector> ();
PVector v1,v2;
float x = 0;
float y = 100;
float speed = 1;


void setup()
{
  size(800, 800); 
  smooth();
  stroke(0,0,0,64);
  strokeCap(ROUND);
  drawTree(width / 2, height);
  v1 = new PVector(30, 30);
  v2 = new PVector(30, 30); 
  float d = PVector.dist(v1, v2);
  println(d);
}

void draw()
{
  //code for the sun and its circular rays
  ellipse(v1.x, v1.y, 112, 112);
  ellipse(v2.x, v2.y, 12, 12);
  v2.add(v1);
  ellipse(v2.x, v2.y, 20, 20);
  //code for the triangle and its movement
  x = x + speed;
translate( x, 5);//translates the triangle across the screen
rotate(PI/2.0);//rotates the triangle
scale(0.5);//scales the size of the triangle down
triangle(30, 75, 58, 20, 86, 75);
 if (x > width)   x = -40;
}

 
void mousePressed() {
  //creates random triangle like figures with mouse clicks
  PVector mouse = new PVector(mouseX, mouseY);
  points.add(mouse);
  if (points.size() > 10) {
    beginShape(TRIANGLES);
    for (PVector p : points) {
      vertex(p.x, p.y);
      mag(1,1);
    }
    endShape();
    points.clear();
}
PVector center = new PVector(width/2,height/2);
points.add(center);
  if (points.size() > 10) {
    beginShape(TRIANGLES);
    for (PVector p : points) {
      vertex(p.x, p.y);
      center.normalize();
    }
    endShape();
    points.clear();
}
}
void drawTree(float x, float y)//
{
  pushMatrix();
  pushStyle();
  background(255);
  translate(x, y);
  drawBranch(1);
  popStyle();
  popMatrix();
}

void drawBranch(int level) //draws all of the individual branchs
{
  if (level > maxLevel) return;
  float branchSize = -treeSize * pow(divisor + random(maxRandomBranchSize * 2.) - maxRandomBranchSize, level);
  strokeWeight(0.3 * -(branchSize));
  stroke(lerpColor(trunk,leaves,level/maxLevel));
  line(0,0,0,branchSize);
  translate(0,branchSize); //translates the branch's
  float thisAngle = angle + random(maxRandomAngle * 2.) - maxRandomAngle;
  rotate(radians(-thisAngle));
  drawBranch(level + 1);
  rotate(radians(thisAngle));
  thisAngle = angle + random(maxRandomAngle * 2.) - maxRandomAngle;
  rotate(radians(thisAngle));
  drawBranch(level + 1);
  rotate(radians(-thisAngle));
  translate(0,-branchSize);

}
