void setup() {
 
  size(400, 400);

}

void draw() {
  
  background(192);
  roundel();
  
}

void roundel() {
  
  noStroke();
  
  fill(255, 154, 38);
  circle(width/2, height/2, 100);
  
  fill(1, 36, 76);
  circle(width/2, height/2, 70);
  
  fill(255);
  circle(width/2, height/2, 40);
  
  fill(145, 48, 6);
  circle(width/2, height/2, 15);
  
}
