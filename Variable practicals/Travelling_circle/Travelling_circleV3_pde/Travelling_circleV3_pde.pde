float x;
float y;
float offset;

void setup() {
  size(500, 500);
  frameRate(30);
 
  x=height/2;
  y=width/2;
}

void draw() {
  noStroke();

  fill(255);
  ellipse(x+offset, y+offset, 60, 60);

  fill(255, 0, 0);
  ellipse(x-offset, y-offset, 60, 60);

  fill(0, 255, 0);
  ellipse(x+offset, y-offset, 60, 60);

  fill(0, 0, 255);
  ellipse(x-offset, y+offset, 60, 60);
  
  offset = offset+1;
}
