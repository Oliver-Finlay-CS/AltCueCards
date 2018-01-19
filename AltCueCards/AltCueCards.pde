//import processing.sound.*;

//Variables
color red=#FF0000, yellow=#FEFF00, green=#00FF0A;
int index = 3; //Will have 3 objects
Boolean[] move = new Boolean[index];
Boolean[] create = new Boolean[index];
Boolean[] correct = new Boolean[index];
int[] AnsX = new int[index];
int[] AnsY = new int[index];
int AnsSquare = 100;
int[] SaX = new int[index];
int[] SaY = new int[index];
int[] markerX = new int[index];
int[] markerY = new int[index];
int markerDiameter = 50;
//SoundFile[] effect = new SoundFile[1];

void setup () {
  size (600, 600);
  //Assignment of Arrays
rect(0, 0, 300, 100); //Title
  rect(300, 0, 150, 100); //Instructions Button
  rect (450, 0, 300, 100); //Quit Button
  rect(0, 100, 100, 400); //User Profile
  rect(100, 100, 400, 400); //Images, Feedback
  rect(500, 100, 100, 400); //Progress
  rect(0, 500, 600, 100); //Legend
  rect(0, 500, 600/7, 100); //Legend Prev Button
  rect( 600*1/7, 500, 600/7, 100); //Legend "1" Button
  rect( 600*2/7, 500, 600/7, 100); //Legend "2" Button
  rect( 600*3/7, 500, 600/7, 100); //Legend "3" Button
  rect( 600*4/7, 500, 600/7, 100); //Legend "4" Button
  rect( 600*5/7, 500, 600/7, 100); //Legend "5" Button
  rect( 600*6/7, 500, 600/7, 100); //Legend Next Button
  for (int i=0; i<3; i=i+1) {
    move[i] = false;
    create[i] = false;
    correct[i] = false;
    AnsX[i] = i*150+100;
    AnsY[i] = 100;
    SaX[i] = i*150+125;
    SaY[i] = 425;
    markerX[i] = i*150+150;
    markerY[i] = 450;
  }  
  //effect[0] = new SoundFile(this, "");
}
void draw () {

  //GUI();

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

  if (create[1] == true) { //Marker #2
    fill(yellow);
    if (correct[1] == true) {
      fill(green);
    }
    ellipse (markerX[1], markerY[1], markerDiameter, markerDiameter);
    if (move[1] == true) {
      markerX[1] = mouseX; //key Varaibles for my mouse
      markerY[1] = mouseY;
    }
  }

  if (create[2] == true) { //Projectile (Makrer 3)
    fill(yellow);
    if (correct[2] == true) {
      fill(green);
    }
    ellipse (markerX[2], markerY[2], markerDiameter, markerDiameter);
    if (move[2] == true) {
      markerY[2] = markerY[2]-1;
    }
  }
}


void mousePressed () {
  move[0] = false;
  move[1] = false;
  move[2] = false;

  // mouseX > && mouseX < && mouseY > && mouseY < 

  if ( mouseX > 125 && mouseX < 125+50 && mouseY > 425 && mouseY < 425+50) { //Marker #1
    create[0] = true;
    move[0] = true;
    //effect[0].play();
  }

  if (mouseX > SaX[1] && mouseX < SaX[1]+markerDiameter && mouseY > SaY[1] && mouseY < SaY[1]+markerDiameter) { //Marker #2
    create[1] = true;
    move[1] = true;
    //effect[0].play();
  }

  if (mouseX > 425 && mouseX < 425+50 && mouseY >  425 && mouseY < 425+50) { //Projectile (Marker 3)
    create[2] = true;
    move[2] = true;
    //effect[0].play();
  }

  if (mouseX > AnsX[0] && mouseX < AnsX[0]+AnsSquare && mouseY > AnsY[0] && mouseY < AnsY[0]+AnsSquare) { //Answer Area Marker #1
    correct[0] = true;
  }

  if (mouseX > AnsX[1] && mouseX < AnsX[1]+AnsSquare && mouseY > AnsY[1] && mouseY < AnsY[1]+AnsSquare) { //Answer Area Marker #2
    correct[1] = true;
  }

  if (mouseX > AnsX[2] && mouseX < AnsX[2]+AnsSquare && mouseY > AnsY[2] && mouseY < AnsY[2]+AnsSquare) { //Projectile Answer Area
    correct[2] = true;
  }
}