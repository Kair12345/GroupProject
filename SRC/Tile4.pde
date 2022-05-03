class Tile4 {
  private int x, y, speed, diam;
  PImage tile4;
  public Tile4() {
    x = 0;
    y = 0;
    speed = 0;
  }
  //void display() {
  //}

  //boolean intersect(Grid) {
  //}
  
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
