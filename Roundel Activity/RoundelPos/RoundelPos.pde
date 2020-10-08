void setup() {
 
  size(400, 400);

}

void draw() {
  
  background(192);
  roundel(width/2, height/2);
  roundel(100, 100);
  roundel(300, 300);
  roundel(100, 300);
  roundel(300, 100);
  
}

void roundel(int x, int y) {
  
  noStroke();
  
  fill(255, 154, 38);
  circle(x, y, 100);
  
  fill(1, 36, 76);
  circle(x, y, 70);
  
  fill(255);
  circle(x, y, 40);
  
  fill(145, 48, 6);
  circle(x, y, 15);
  
}
