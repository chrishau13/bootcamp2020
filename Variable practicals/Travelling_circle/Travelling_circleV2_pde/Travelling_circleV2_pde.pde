float x=250;
float y=250; 

float a=250;
float b=250;

float c=250;
float d=250;

float e=250;
float f=250;

void setup() {
  size(500, 500);
  frameRate(30);
}

void draw() {
  noStroke();

  fill(255);
  ellipse(x, y, 60, 60);

  fill(255, 0, 0);
  ellipse(a, b, 60, 60);

  fill(0, 255, 0);
  ellipse(c, d, 60, 60);

  fill(0, 0, 255);
  ellipse(e, f, 60, 60);

  x = x+1;
  y = y+1;

  a = a-1;
  b = b-1;

  c = c+1;
  d = d-1;

  e = e-1;
  f = f+1;
}
