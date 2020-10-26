void Option() {
  //Background
  if (courtselector == 1) {
    background(Green);
    image(bckgrndb, 0, 0);
    textFont(Logo_Font);
  } else if (courtselector == 2) {
    //Basketball Court
    background(Orange);
    image(bckgrndr, 0, 0);
    textFont(Logo_Font);
  } else if (courtselector == 3) {
    //Soccer Field
    background(Blue);
    image(bckgrndl, 0, 0);
    textFont(Logo_Font);
  }
  
  //Title
  textSize(75);
  fill(Red);
  text("OPTIONS", 218, 52);
  fill(255);
  textSize(75);
  text("OPTIONS", 220, 50);

  //Selection
  fill(Blue);
  stroke(0);
  strokeWeight(2);
  rect(25, 100, 380, 480, width/128);

  //Map Selections 
  fill(255);
  textSize(20);
  text("Pick Your Map", 210, 127);
  
  fill(Red);
  tactileR(45, 145, 150, 250);
  rect(45, 150, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Table Tennis", 95, 170);

  fill(Red);
  tactileR(165, 265, 150, 250);
  rect(165, 150, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Basketball", 215, 170);

  fill(Red);
  tactileR(285, 385, 150, 250);
  rect(285, 150, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Football", 340, 170);

  //Player Selection
  fill(255);
  textSize(20);
  text("Pick Your Ball And Paddle", 210, 280);
  
  fill(Yellow);
  tactileR(45, 145, 310, 410);
  rect(45, 310, 100, 100, width/128);
  strokeWeight(10);
  fill(255);
  textSize(15);
  text("Yellow", 95, 330);

  fill(Bluer);
  tactileR(165, 265, 310, 410);
  rect(165, 310, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Blue", 215, 330);

  fill(Red);
  tactileR(285, 385, 310, 410);
  rect(285, 310, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Red", 340, 330);
  
  //Back
  if (playerselector == 1) {
  fill(Yellow);
  } else if(playerselector == 2) {
  fill(Bluer);
  } else if(playerselector == 3) {
  fill(Red);
  }
  tactileR(100, 320, 500, 560);
  rect(100, 500, 220, 60, width/128);
  fill(255);
  textSize(50);
  text("Back", 210, 525);
}

void Optionc() {
  if (mouseX > 100 && mouseX < 320 && mouseY > 500 && mouseY < 560) mode = Intro;
  //Court Selector
  if (mouseX > 45  && mouseX < 145 && mouseY > 150 && mouseY < 250) courtselector=1;
  if (mouseX > 165 && mouseX < 265 && mouseY > 150 && mouseY < 250) courtselector=2;
  if (mouseX > 285 && mouseX < 385 && mouseY > 150 && mouseY < 250) courtselector=3;
  //Player Selector
  if (mouseX > 45  && mouseX < 145 && mouseY > 310 && mouseY < 410) playerselector=1;
  if (mouseX > 165 && mouseX < 265 && mouseY > 310 && mouseY < 410) playerselector=2;
  if (mouseX > 285 && mouseX < 385 && mouseY > 310 && mouseY < 410) playerselector=3;
}
