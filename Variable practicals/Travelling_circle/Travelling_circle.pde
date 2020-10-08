float x=200;
float y=150; 

void setup() {
  size(400, 300);
}

void draw() {
  background(200);
  ellipse(x, y, 60, 60);
  
  x = x-1;
  y = y-1;
}
