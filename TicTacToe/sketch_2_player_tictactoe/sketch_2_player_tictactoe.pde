float win, lose;
boolean restart = false;
boolean S1, S2, S3, S4, S5, S6, S7, S8, S9 = false;
boolean turn = false;

void setup() {

  // Setup for the game
  size(600, 600);
  background(255);

  fill(0);
  rect(195, 0, 5, 600);

  fill(0);
  rect(395, 0, 5, 600);

  fill(0);
  rect(0, 195, 600, 5);

  fill(0);
  rect(0, 395, 600, 5);

  //Restart button
  noStroke();
  fill(255, 0, 0);
  rect(width-50, height-50, 40, 40);

  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("R", width-30, height-15);

  frameRate(60);
}

void draw() {

  //Cross in top left
  if ((mouseX < 200 && mouseY < 200) && (mousePressed == true) && (S1 == false) && (turn == false)) {
    strokeWeight(10);
    line(20, 20, 180, 180);
    line(180, 20, 20, 180);
    stroke(0);
    
    S1 = true;
    turn = true;
    
  }

  //Cross in top middle
  if ((mouseX > 200 && mouseX < 400 && mouseY < 200) && (mousePressed == true)) {
    strokeWeight(10);
    line(220, 20, 380, 180);
    line(380, 20, 220, 180);
    stroke(0);
  }

  //Cross in top right
  if ((mouseX > 400 && mouseX < 600 && mouseY < 200) && (mousePressed == true)) {
    strokeWeight(10);
    line(420, 20, 580, 180);
    line(580, 20, 420, 180);
    stroke(0);
  }

  //Cross in middle left
  if ((mouseX < 200 && mouseY < 400 && mouseY > 200) && (mousePressed == true)) {
    strokeWeight(10);
    line(20, 220, 180, 380);
    line(180, 220, 20, 380);
    stroke(0);
  }

  //Cross in center
  if ((mouseX > 200 && mouseX < 400 && mouseY > 200 && mouseY < 400) && (mousePressed == true)) {
    strokeWeight(10);
    line(220, 220, 380, 380);
    line(380, 220, 220, 380);
    stroke(0);
  }

  //Cross in middle right
  if ((mouseX > 400 && mouseX < 600 && mouseY > 200 && mouseY < 400) && (mousePressed == true)) {
    strokeWeight(10);
    line(420, 220, 580, 380);
    line(580, 220, 420, 380);
    stroke(0);
  }

  //Cross in bottom left
  if ((mouseX < 200 && mouseY > 400) && (mousePressed == true)) {
    strokeWeight(10);
    line(20, 420, 180, 580);
    line(180, 420, 20, 580);
    stroke(0);
  }

  //Cross in bottom middle
  if ((mouseX > 200 && mouseX < 400 && mouseY > 400) && (mousePressed == true)) {
    strokeWeight(10);
    line(220, 420, 380, 580);
    line(380, 420, 220, 580);
    stroke(0);
  }

  //Cross in bottom right
  if ((mouseX > 400 && mouseX < 550 && mouseY > 400 && mouseY < 550) && (mousePressed == true)) {
    strokeWeight(10);
    line(420, 420, 580, 580);
    line(580, 420, 420, 580);
    stroke(0);

    //Redraw the restart button over the cross
    noStroke();
    fill(255, 0, 0);
    rect(width-50, height-50, 40, 40);

    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("R", width-30, height-15);
  }

  //If player wins screen
  if (win > 0) {
    background(255);
    textSize(48);
    textAlign(CENTER);
    text("YOU WIN!!!", width/2, height/2);

    noStroke();
    fill(255, 0, 0);
    rect(width-50, height-50, 40, 40);

    fill(0);
    textSize(40);
    textAlign(CENTER);
    text("R", width-30, height-15);
  }

  //If player loses screen
  if (lose > 0) {
    background(255);
    textSize(48);
    textAlign(CENTER);
    text("YOU LOSE :c", width/2, height/2);

    noStroke();
    fill(255, 0, 0);
    rect(width-50, height-50, 40, 40);

    fill(0);
    textSize(40);
    textAlign(CENTER);
    text("R", width-30, height-15);
  }

  //Restart button pressed
  if ((mouseX > 550 && mouseX < 590 && mouseY > 550 && mouseY < 590) && (mousePressed == true)) {
    background(255);
    strokeWeight(1);

    fill(0);
    rect(195, 0, 5, 600);

    fill(0);
    rect(395, 0, 5, 600);

    fill(0);
    rect(0, 195, 600, 5);

    fill(0);
    rect(0, 395, 600, 5);

    noStroke();
    fill(255, 0, 0);
    rect(width-50, height-50, 40, 40);

    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("R", width-30, height-15);
  }

  println(mouseX, mouseY, S1, turn);
}
