class Tile4 {
  float x, y, w, h, speedX, speedY, maxSpeed;
  String tile;
  PImage tile4, corey;

  Tile4() {
    x = 100;
    y = 100;
    h = 32;
    w = 32;
    speedX = 0;
    speedY = 0;
    maxSpeed = 5;

    corey = loadImage("corey.png");

    this.x = x;
    this.y = y;
  }

  void update() {
    if (left4) {
      speedY = 0;
      speedX = -maxSpeed;
    }
    if (right4) {
      speedY = 0;
      speedX = maxSpeed;
    }
    if (!left4 && !right4) {
      speedX = 0;
    }
    if (left4 && right4) {
      speedX = 0;
      left4 = false;
      right4 = false;
    }


    if (up4) {
      speedX = 0;
      speedY = -maxSpeed;
    }
    if (down4) {
      speedX = 0;
      speedY = maxSpeed;
    }
    if (!up4 && !down4) {
      speedY = 0;
      up4 = false;
      down4 = false;
    }
    if (up4 && down4) {
      speedY = 0;
    }
    checkBounds();

    x += speedX;
    y += speedY;
  }


  void display() {
    rect(x, y, 125, 125);
    image(corey, x, y, 125, 125);
    //fill(0,255,0);
  }


  void checkBounds() {
    if (x < -w + 30) {
      left4 = false;
      right4 = false;
      up4 = false;
      down4 = false;
      speedX = 0;
      x++;
    }
    if (x > width - 126) {
      left4 = false;
      right4 = false;
      up4 = false;
      down4 = false;
      speedX = 0;
      x--;
    }
    if (y < -h + 30) {
      left4 = false;
      right4 = false;
      up4 = false;
      down4 = false;
      speedY = 0;
      y++;
    }
    if (y > height - 126) {
      left4 = false;
      right4 = false;
      up4 = false;
      down4 = false;
      speedY = 0;
      y--;
    }
  }








  //boolean intersect(Tile4) {
  //}

  //boolean intersect(Tile2) {
  //}
}
