void mouseReleased() {
  if (mode == Intro) {
    introc();
  } else if (mode == Option) { // else is if the prevous if is not true
    Optionc();
  } else if (mode == Inst) { // else is if the prevous if is not true
    Instc();
  } else if (mode == Game) { // else is if the prevous if is not true
    gamec();
  } else if (mode == Score) { // else is if the prevous if is not true
    scorec();
  } else if (mode == Pause) { // else is if the prevous if is not true
    pausec();
  } else if (mode == GameOver) { // else is if the prevous if is not true
    goc();
  }
}
