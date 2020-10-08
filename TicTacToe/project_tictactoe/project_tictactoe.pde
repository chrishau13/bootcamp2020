boolean turn;

void setup() {

  //Setup for the game
  size(700, 900);
  background(#d3d3d3); 

  //Grid
  fill(255);
  rect(50, 200, 600, 600);

  fill(0);
  rect(245, 200, 5, 600);
  rect(445, 200, 5, 600);
  rect(50, 395, 600, 5);
  rect(50, 595, 600, 5);

  //Title
  textSize(100);
  textAlign(CENTER);
  text("TIC TAC TOE", width/2, height/8+60);

  //Player turn
  noStroke();
  fill(255);
  rect(50, 20, 200, 50);
  rect(450, 20, 200, 50);

  //Player 1
  stroke(0);
  strokeWeight(2);
  line(55, 25, 100, 65);
  line(100, 25, 55, 65);

  fill(0);
  textSize(30);
  text("Player 1", 180, 57);

  //Player 2
  stroke(0);
  strokeWeight(2);
  fill(255);
  circle(620, 45, 40);

  textSize(30);
  fill(0);
  text("Player 2", 520, 57);

  //Restart Button
  noStroke();
  fill(255, 0, 0);
  rect(width/2-25, height-75, 50, 50);

  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("R", width/2, height-35);

  turn = true;
}

void draw() {

  if (turn == true) {  
    stroke(255, 0, 0);
    strokeWeight(2);
    fill(255);
    rect(50, 20, 200, 50);

    stroke(0);
    strokeWeight(2);
    line(55, 25, 100, 65);
    line(100, 25, 55, 65);

    fill(0);
    textSize(30);
    text("Player 1", 180, 57);

    noStroke();
    fill(255);
    rect(450, 20, 200, 50);

    stroke(0);
    strokeWeight(2);
    fill(255);
    circle(620, 45, 40);

    textSize(30);
    fill(0);
    text("Player 2", 520, 57);

    noStroke();
    fill(255);
    rect(50, 20, 200, 50);



    if (mousePressed == true) {
      turn = false;
    }
  }

  if (turn == false) {
    stroke(255, 0, 0);
    strokeWeight(2);
    fill(255);
    rect(450, 20, 200, 50);

    stroke(0);
    strokeWeight(2);
    fill(255);
    circle(620, 45, 40);

    textSize(30);
    fill(0);
    text("Player 2", 520, 57);

    noStroke();
    fill(255);
    rect(50, 20, 200, 50);


    stroke(0);
    strokeWeight(2);
    line(55, 25, 100, 65);
    line(100, 25, 55, 65);

    fill(0);
    textSize(30);
    text("Player 1", 180, 57);
    
    if (mousePressed == true) {
    turn = true;
    }
  }
}
