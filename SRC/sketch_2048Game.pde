// By Corey Boulds, Oscar Dayton, Kai Rosenbluth, and Noah Williams
ArrayList<Tile2>tile2s = new ArrayList<Tile2>();
Tile2 t2;
Tile4 t4;
String k;
int x, y, score;
boolean play, left2, left4, right2, right4, up2, up4, down2, down4;
PImage startScreen, endScreen;
import processing.sound.*;
SoundFile file;


void setup() {
  size(500, 500);

  t2 = new Tile2();
  t4 = new Tile4();
  k = "";

  left2 = false;
  right2 = false;
  up2 = false;
  down2 = false;

  play = false;
  score = 0;
  startScreen = loadImage("startScreen.png");
  endScreen = loadImage("endScreen.png");
  file = new SoundFile(this, "irishSong.mp3");
  file.play();
  file.loop();
}

void draw() {
  if (!play) {
    image(startScreen, 0, 0);
  }
  if (play == true) {
    image(endScreen, 0, 0);
  }
  textAlign(CENTER);
  textSize(30);
  fill(255);
  text("Score: " + score, 435, 30);

  t2.update();
  t2.display();
  fill(0);
  textSize(20);
  text(k, 100, 50);

  t4.update();
  t4.display();

  //for (int i = 0; i < tile4.size(); i++) {
  //Tile4 tile4 = tile4.get(i);
  //for (int j = 0; j < tile4.size(); j++) {
  //  Tile4 tile4 = tile4.get(j);
  //  if (tile4.intersect(tile4)) {
  //    tile4.remove(tile4);

  //    score+=1;
  //  }
}

void startScreen() {
  if (mousePressed) {
    play = true;
  }
}

void endScreen() {
}

void keyPressed() {
  k = "key: " + keyCode;

  if (keyCode == 37) {
    left2 = true;
  } else if (keyCode == 38) {
    up2 = true;
  } else if (keyCode == 39) {
    right2 = true;
  } else if (keyCode == 40) {
    down2 = true;
  }

  if (keyCode == 65) {
    left4 = true;
  } else if (keyCode == 87) {
    up4 = true;
  } else if (keyCode == 68) {
    right4 = true;
  } else if (keyCode == 83) {
    down4 = true;
  }
}

void keyReleased() {
  if (keyCode == 37) {
    left2 = false;
    left2 = true;
  } else if (keyCode == 38) {
    up2 = false;
    up2 = true;
  } else if (keyCode == 39) {
    right2 = false;
    right2 = true;
  } else if (keyCode == 40) {
    down2 = false;
    down2 = true;
  }


  if (keyCode == 65) {
    left4 = false;
    left4 = true;
  } else if (keyCode == 87) {
    up4 = false;
    up4 = true;
  } else if (keyCode == 68) {
    right4 = false;
    right4 = true;
  } else if (keyCode == 83) {
    down4 = false;
    down4 = true;
  }
}
