void marker() {
   if (create[0] == true) { //Marker #1
    fill(yellow);
    if (correct[0] == true) {
      fill(green);
    }
    ellipse (markerX[0], markerY[0], markerDiameter, markerDiameter);
    if (move[0] == true) {
      markerX[0] = mouseX; //key Varaibles for my mouse
      markerY[0] = mouseY;
    }
  }
}