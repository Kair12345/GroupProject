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
    if (left) {
      speedY = 0;
      speedX = -maxSpeed;
    }
    if (right) {
      speedY = 0;
      speedX = maxSpeed;
    }
    if (!left && !right) {
      speedX = 0;
    }
    if (left && right) {
      speedX = 0;
      left = false;
      right = false;
    }


    if (up) {
      speedX = 0;
      speedY = -maxSpeed;
    }
    if (down) {
      speedX = 0;
      speedY = maxSpeed;
    }
    if (!up && !down) {
      speedY = 0;
      up = false;
      down = false;
    }
    if (up && down) {
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
      left = false;
      right = false;
      up = false;
      down = false;
      speedX = 0;
      x++;
    }
    if (x > width - 126) {
      left = false;
      right = false;
      up = false;
      down = false;
      speedX = 0;
      x--;
    }
    if (y < -h + 30) {
      left = false;
      right = false;
      up = false;
      down = false;
      speedY = 0;
      y++;
    }
    if (y > height - 126) {
      left = false;
      right = false;
      up = false;
      down = false;
      speedY = 0;
      y--;
    }
  }

  boolean intersect4(Tile4 t4) {
    //if() {
    
    //}
    return false; 
  }

}
