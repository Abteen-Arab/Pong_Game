void intro() { 
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

  //LOGO
  fill(Red);
  textSize(75);
  text("HYPER PONG", 248, 92);
  fill(255);
  textSize(75);
  text("HYPER PONG", 250, 90);

  //Start Button
  fill(Red);
  tactileR(100, 300, 200, 275);
  rect (100, 200, 200, 75, width/128);
  fill(0);
  textSize(40);
  text("Start", 198, 232);
  fill(255);
  textSize(40);
  text("Start", 200, 230);

  //Option 
  fill(Red);
  tactileR(100, 300, 310, 385);
  rect (100, 310, 200, 75, width/128);
  fill(0);
  textSize(40);
  text("Option", 198, 342);
  fill(255);
  textSize(40);
  text("Option", 200, 340);

  //Exit 
  fill(Red);
  tactileR(100, 300, 420, 495);
  rect (100, 420, 200, 75, width/128); 
  fill(0);
  textSize(40);
  text("Exit", 198, 452);
  fill(255);
  textSize(40);
  text("Exit", 200, 450);
} 

void introc() { 
  if (mouseX > 100 && mouseX < 300 && mouseY > 200 && mouseY < 275) mode = Inst;
  if (mouseX > 100 && mouseX < 300 && mouseY > 310 && mouseY < 385) mode = Option;
  if (mouseX > 100 && mouseX < 300 && mouseY > 420 && mouseY < 495) exit();
} // =========================================================================
