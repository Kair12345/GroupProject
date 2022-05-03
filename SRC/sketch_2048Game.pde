// By Corey Boulds, Oscar Dayton, Kai Rosenbluth, and Noah Williams 

Tile2 t2;

int x, y, score;
boolean play;
boolean turn;
PImage startScreen, endScreen;
import processing.sound.*;
SoundFile file;
int[] tiles = new int[16];

void setup() {
  for (int i=0; i<16;i++) {
    tiles[i] = 0;
    }
  for (int j=0;j<1;j++) {
      int pos = (int)random(0,16);
      int val = (int)random(0,10);
      while (tiles[pos] != 0) { pos = (int)random(0,16); }
      if (val < 9) { tiles[pos] = 2; }
      else { tiles[pos] = 4; }
  }
 
  size(500,500);
  // t2 = new Tile2();
  play = false;
  startScreen = loadImage("startScreen.png");
  endScreen = loadImage("endScreen.png");
  file = new SoundFile(this,"irishSong.mp3");
  file.play();
  file.loop();
  score = 0;
}

void draw(){

  if (!play) {
    image(startScreen,0,0);
  }
  if(play == true) {
    image(endScreen,0,0);
  }
  textSize(30);
  text("Score: " + score,390,45);

 
}

void startScreen() {

if (mousePressed) {
    play = true;
  }

}

void endScreen() {

}

