void pause() {
  pushMatrix();

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
  
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("Score : " + pointl, 300, height/10);
  text("Score : " + pointr, 500, height/10);

  //Pause Text
  textSize(100);
  fill(0);
  text("Pause", width/2 -2, height/2 +2);
  fill(255);
  text("Pause", width/2, height/2);
  popMatrix();
}

void pausec() {
  if (mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60) {
    mode = Game;
  }
}
