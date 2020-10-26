void game() {
  //Court selector
  if (courtselector == 1) {
    background(0);
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
  //Player selector
  if (playerselector == 1) {
    //Paddle
    stroke(0);
    strokeWeight(1);
    fill(Yellow);
    circle (leftx, lefty, leftd);
    circle (rightx, righty, rightd);
    circle (ballx, bally, balld);
  } else if (playerselector == 2) {
    //Paddle
    stroke(0);
    strokeWeight(1);
    fill(Blue);
    circle (leftx, lefty, leftd);
    circle (rightx, righty, rightd);
    circle (ballx, bally, balld);
  } else if (playerselector == 3) {
    //Paddle
    stroke(0);
    strokeWeight(1);
    fill(Red);
    circle (leftx, lefty, leftd);
    circle (rightx, righty, rightd);
    circle (ballx, bally, balld);
  }


  //Bot Setup
  if (righty - balld > bally) {
    bdown = true;
    bup = false;
  } else if (righty + balld < bally) {
    bdown = false;
    bup = true;
  } else {
    bdown = false;
    bup = false;
  }


  //Paddle Movement
  if (gameselector == 1) {
    //1 VS. 1
    if (upkey == true)   righty = righty - 8;
    if (downkey == true) righty = righty + 8;
    if (wkey == true) lefty = lefty - 8;
    if (ykey == true) lefty = lefty + 9;
  } else if (gameselector == 2) {
    //1 VS. AI
    if (hardselector == 1) {
      if (bdown == true) {
        righty = righty - 5;
      } else if (bup == true) {
        righty = righty + 5;
      }
    } else if (hardselector == 2) {
      if (bdown == true) {
        righty = righty - 8;
      } else if (bup == true) {
        righty = righty + 8;
      }
    } else if (hardselector == 3) {
      righty = righty + vy;
    }
    //Left Paddle Movement
    if (wkey == true) lefty = lefty - 8;
    if (ykey == true) lefty = lefty + 9;
  } else if (gameselector == 3) {
    //AI VS. AI
    if (hardselector == 1) {
      righty = righty + vy * 0.75;
      lefty = lefty + vy * 0.75;
    } else if (hardselector == 2) {
      righty = righty + vy * 0.8;
      lefty = lefty + vy * 0.8;
    } else if (hardselector == 3) {
      righty = righty + vy * 0.85;
      lefty = lefty + vy * 0.8;
    }
  }


  //Boundries
  if (lefty+leftd/2 > height - balld/2) {
    ykey = false;
    lefty = height - leftd/2 - balld/2;
  }
  if (lefty-leftd/2 < balld/2) {
    wkey = false;
    lefty = leftd/2 + balld/2;
  }
  if (righty+rightd/2 > height - balld/2) {
    downkey = false;
    righty = height - rightd/2 - balld/2;
  }
  if (righty-rightd/2 < balld/2) {
    upkey = false;
    righty = rightd/2 + balld/2;
  }

  //Ball
  ballx = ballx + vx;
  bally = bally + vy;

  //Scoring
  if (ballx < balld/2 || ballx > width - balld/2) {
    if (gameselector == 3) {
      if (ballx < balld/2) pointr ++;
      if (ballx > width - balld/2) pointl ++;
      ballx = width/2;
      bally = height/2;
      mode = Score;
      vx = 6; 
      vy=  random(-2, 2);
      righty = height/2;
      lefty = height/2;
      score.rewind();
      score.play();
    } else {
      if (ballx < balld/2) {
        pointr ++;
        //Ball reset
        ballx = width/2;
        bally = height/2;
        mode = Score;
        vx = -6; 
        vy=  0;
        //Paddle reset
        righty = height/2;
        lefty = height/2;
        //Score reset
        score.rewind();
        score.play();
      }
      if (ballx > width - balld/2) {
        pointl ++;
        //Ball reset
        ballx = width/2;
        bally = height/2;
        mode = Score;
        vx = 6; 
        vy=  0;
        //Paddle reset
        righty = height/2;
        lefty = height/2;
        //Score reset
        score.rewind();
        score.play();
      }
    }
  }

  //Top & Bottom boundaries
  if (bally < balld/2 || bally > height - balld/2) {
    vy = vy * -1;
  }

  //Paddle ball Boundries
  if (dist(leftx, lefty, ballx, bally) <= balld/2+leftd/2) {
    vx = (ballx - leftx) /5;
    vy = (bally - lefty) /5;
    hit.rewind();
    hit.play();
  }

  if (dist(rightx, righty, ballx, bally) <= balld/2+rightd/2) {
    vx = (ballx - rightx) /5;
    vy = (bally - righty) /5;
    hit.rewind();
    hit.play();
  }

  //Score Tracking
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("Score : " + pointl, 300, height/10);
  text("Score : " + pointr, 500, height/10);

  if (pointr > 2 || pointl > 2) {
    if (abs(pointr-pointl) > 1) {
      mode = GameOver;
      clap.rewind();
      clap.play();
    }
  }

  //Pause
  if (playerselector == 1) {
    //Pause Button
    textFont(Logo_Font);  
    tactileR(10, 110, 10, 60);
    fill(Yellow);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    stroke(0);
    fill(0);
    rect(50, 20, 5, 30);
    rect(65, 20, 5, 30);
  } else if (playerselector == 2) {
    //Pause Button
    textFont(Logo_Font);  
    tactileR(10, 110, 10, 60);
    fill(Blue);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    stroke(0);
    fill(0);
    rect(50, 20, 5, 30);
    rect(65, 20, 5, 30);
  } else if (playerselector == 3) {
    //Pause Button
    textFont(Logo_Font);  
    tactileR(10, 110, 10, 60);
    fill(Red);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    rect(10, 10, 100, 50, width/50, width/50, width/50, width/50);
    stroke(0);
    fill(0);
    rect(50, 20, 5, 30);
    rect(65, 20, 5, 30);
  }
}


void gamec() {
  if (mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60) { 
    mode = Pause;
  }
}
