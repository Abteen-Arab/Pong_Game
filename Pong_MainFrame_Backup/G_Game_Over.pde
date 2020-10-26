void go() {
  background(0);
  if (pointl > pointr) {
    fill(255);
    textSize(50);
    text("Congrates Left", width/2, height/2);
  } else if (pointr > pointl) {
    fill(255);
    textSize(50);
    text("Congrates Right", width/2, height/2);
  }
}

void goc() {
  mode = Intro;
}
