class Tile2 {
  int x, y, speed, diam;
  PImage tile2;
  Tile2(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void display() {
  }

  //boolean intersect(Grid) {
  //}





// Kai did this part of the code implimenting the start of collision detection

  boolean intersect(Tile2 t2) {
    float distance = dist(x, y, t2.x, t2.y);
    if (distance < 1) {
      return true;
    } else {
      return false;
    }
  }


    boolean intersect(Tile4 t4) {
    float distance = dist(x, y, t4.x, t4.y);
    if (distance < 1) {
      return true;
    } else {
      return false;
    }
  }
  
 
  
}
