float rows;
float cols;

void setup() {
  size(800, 800);
  rows=8;
  cols=8;
}

void draw() {
  background(255);
  noStroke();

  float rectW = width/cols;
  float rectH = height/rows;

  for (int r=0; r<rows; r++) {
    for (int c=0; c<cols; c++) {
        int isItEven = (r+c)%2;
        if (isItEven == 0) {
          fill(64);
        } else {
          fill(200);
        }
        rect(c*rectW, r*rectH, rectW, rectH);
      }
    }
  }
