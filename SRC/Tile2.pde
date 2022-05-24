class Tile2 {
  float x, y, w, h, speedX, speedY, maxSpeed;
  String tile;
  PImage tile2, oscar;

  Tile2() {
    x = 300;
    y = 300;
    h = 32;
    w = 32;
    speedX = 0;
    speedY = 0;
    maxSpeed = 5;

    oscar = loadImage("oscar.png");

    this.x = x;
    this.y = y;
  }

  void update() {
    if (left2) {
      speedY = 0;
      speedX = -maxSpeed;
    }
    if (right2) {
      speedY = 0;
      speedX = maxSpeed;
    }
    if (!left2 && !right2) {
      speedX = 0;
    }
    if (left2 && right2) {
      speedX = 0;
      left2 = false;
      right2 = false;
    }


    if (up2) {
      speedX = 0;
      speedY = -maxSpeed;
    }
    if (down2) {
      speedX = 0;
      speedY = maxSpeed;
    }
    if (!up2 && !down2) {
      speedY = 0;
      up2 = false;
      down2 = false;
    }
    if (up2 && down2) {
      speedY = 0;
    }
    checkBounds();

    x += speedX;
    y += speedY;
  }


  void display() {
    rect(x, y, 125, 125);
    image(oscar, x, y, 125, 125);
    //fill(0,255,0);
  }


  void checkBounds() {
    if (x < -w + 30) {
      left2 = false;
      right2 = false;
      up2 = false;
      down2 = false;
      speedX = 0;
      x++;
    }
    if (x > width - 126) {
      left2 = false;
      right2 = false;
      up2 = false;
      down2 = false;
      speedX = 0;
      x--;
    }
    if (y < -h + 30) {
      left2 = false;
      right2 = false;
      up2 = false;
      down2 = false;
      speedY = 0;
      y++;
    }
    if (y > height - 126) {
      left2 = false;
      right2 = false;
      up2 = false;
      down2 = false;
      speedY = 0;
      y--;
    }
  }

  //boolean intersect(tile4 t4) {
  //  return false;
  //}
}
