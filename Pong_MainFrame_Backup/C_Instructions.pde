void Inst() {
  background(255);
  image(bckgrndb, 0, 0);
  textFont(Logo_Font);

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
  
  //Instruction
  fill(Blue);
  stroke(0);
  rect(25, 100, 375, 480, width/128);
  
  //Title
  textSize(75);
  fill(Red);
  text("Instructions", 258, 52);
  fill(255);
  textSize(75);
  text("Instructions", 260, 50);

  //Rectangle
  fill(Blue);
  stroke(0);
  strokeWeight(2);
  rect(25, 100, 380, 480, width/128);

  //Game Selections 
  fill(255);
  textSize(20);
  text("Game Mode", 210, 127);
  
  fill(Red);
  tactileR(45, 145, 150, 250);
  rect(45, 150, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("2 Player", 95, 170);

  fill(Red);
  tactileR(165, 265, 150, 250);
  rect(165, 150, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("1 Player", 215, 170);

  fill(Red);
  tactileR(285, 385, 150, 250);
  rect(285, 150, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Robot", 340, 170);

  //Player Selection
  fill(255);
  textSize(20);
  text("Difficulty", 210, 280);
  
  fill(Red);
  tactileR(45, 145, 310, 410);
  rect(45, 310, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Easy", 95, 330);

  fill(Red);
  tactileR(165, 265, 310, 410);
  rect(165, 310, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Default", 215, 330);

  fill(Red);
  tactileR(285, 385, 310, 410);
  rect(285, 310, 100, 100, width/128);
  fill(255);
  textSize(15);
  text("Ludicrous", 340, 330);
  
  //Start
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
  text("Start", 210, 525);
  
  //Point Reset
  pointr = 0;
  pointl = 0;
}

void Instc() {
  if (mouseX > 100 && mouseX < 320 && mouseY > 500 && mouseY < 560) mode = Game;
  //Court Selector
  if (mouseX > 45  && mouseX < 145 && mouseY > 150 && mouseY < 250) gameselector=1;
  if (mouseX > 165 && mouseX < 265 && mouseY > 150 && mouseY < 250) gameselector=2;
  if (mouseX > 285 && mouseX < 385 && mouseY > 150 && mouseY < 250) gameselector=3;
  //Player Selector
  if (mouseX > 45  && mouseX < 145 && mouseY > 310 && mouseY < 410) hardselector=1;
  if (mouseX > 165 && mouseX < 265 && mouseY > 310 && mouseY < 410) hardselector=2;
  if (mouseX > 285 && mouseX < 385 && mouseY > 310 && mouseY < 410) hardselector=3;
}
