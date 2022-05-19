// By Corey Boulds, Oscar Dayton, Kai Rosenbluth, and Noah Williams
ArrayList<Tile2>tile2s = new ArrayList<Tile2>();
Tile2 t2;
String k;
int x, y, score;
boolean play, left, right, up, down;
PImage startScreen, endScreen;
import processing.sound.*;
SoundFile file;


void setup() {
  size(500, 500);

  t2 = new Tile2();
  k = "";

  left = false;
  right = false;
  up = false;
  down = false;

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
  
  if(keyCode == 37) {
    left = true; 
  } else if(keyCode == 38) {
    up = true; 
  } else if(keyCode == 39) {
    right = true; 
  } else if(keyCode == 40) {
    down = true; 
  } 
  
}

void keyReleased() {
}

