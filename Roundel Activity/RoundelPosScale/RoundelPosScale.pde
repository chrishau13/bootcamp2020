void setup() {
 
  size(400, 400);

}

void draw() {
  
  background(192);
  roundel(width/2, height/2, 1.0);
  roundel(100, 100, 0.5);
  roundel(300, 300, 2.0);
  roundel(100, 300, 0.25);
  roundel(300, 100, 0.75);
  
}

void roundel(int x, int y, float scale) {
  
  noStroke();
  
  fill(255, 154, 38);
  circle(x, y, 100 * scale);
  
  fill(1, 36, 76);
  circle(x, y, 70 * scale);
  
  fill(255);
  circle(x, y, 40 * scale);
  
  fill(145, 48, 6);
  circle(x, y, 15 * scale);
  
}
