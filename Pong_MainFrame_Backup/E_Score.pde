void Score() {
  if (courtselector == 1) {
    background(Green);
    image(tble, 0, 0);
  } else if (courtselector == 2) {
    //Basketball Court
    background(Orange);
    stroke(255);
    strokeWeight(5);
    line(400, 0, 400, 600);
    noFill();
    circle(width/2, height/2, 200);
    rect(-1, 210, 200, 180);
    circle(199, 300, 180);
    rect(599, 210, 200, 180);
    circle(599, 300, 180);
  } else if (courtselector == 3) {
    //Soccer Field
    background(Green);
    stroke(255);
    strokeWeight(5);
    line(400, 0, 400, 600);
    noFill();
    circle(width/2, height/2, 200);
    rect(-1, 100, 200, 400);
    rect(601, 100, 200, 400);
  }

  if (playerselector == 1) {
    //Paddle
    fill(Yellow);
    stroke(0);
    strokeWeight(1);
    circle (leftx, lefty, leftd);
    circle (rightx, righty, rightd);
    circle (ballx, bally, balld);
  } else if (playerselector == 2) {
    //Paddle
    fill(Blue);
    stroke(0);
    strokeWeight(1);
    circle (leftx, lefty, leftd);
    circle (rightx, righty, rightd);
    circle (ballx, bally, balld);
  } else if (playerselector == 3) {
    //Paddle
    fill(Red);
    stroke(0);
    strokeWeight(1);
    circle (leftx, lefty, leftd);
    circle (rightx, righty, rightd);
    circle (ballx, bally, balld);
  }

  //Name 
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("Score : " + pointl, 300, height/10);
  text("Score : " + pointr, 500, height/10);


  //circle
  ballx = width/2;
  bally = height/2;
  balld = rightd/2;

  //Paddle Movement
  if (upkey == true)   righty = righty - 5;
  if (downkey == true) righty = righty + 5;

  if (wkey == true) lefty = lefty - 5;
  if (ykey == true) lefty = lefty + 5;

  //Boundries
  if (lefty+leftd/2 > height) {
    ykey = false;
    lefty = height - leftd/2;
  }

  if (lefty-leftd/2 < 0) {
    wkey = false;
    lefty = 0 + leftd/2;
  }
  if (righty+rightd/2 > height) {
    downkey = false;
    righty = height - rightd/2;
  }
  if (righty-rightd/2 < 0) {
    upkey = false;
    righty = 0 + rightd/2;
  }

  //Pause Button
  if (playerselector == 1) {
    //Pause Button
    textFont(Logo_Font);  
    tactileR(10, 110, 10, 60);
    fill(Yellow);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    stroke(0);
    fill(0);
    triangle(50, 20, 75, 35, 50, 50);
  } else if (playerselector == 2) {
    //Pause Button
    textFont(Logo_Font);  
    tactileR(10, 110, 10, 60);
    fill(Blue);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    stroke(0);
    fill(0);
    triangle(50, 20, 75, 35, 50, 50);
  } else if (playerselector == 3) {
    //Pause Button
    textFont(Logo_Font);  
    tactileR(10, 110, 10, 60);
    fill(Red);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    stroke(0);
    fill(0);
    triangle(50, 20, 75, 35, 50, 50);
  }
}


void scorec() {
  mode = Game;
}
