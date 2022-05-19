class Tile2 {
  float x, y, w, h, speedX, speedY,;
  String tile;
  PImage tile2, oscar;

  Tile2() {
    x = width/2;
    y = height/2;
    h = 32; 
    w = 32; 
    speedX = 0; 
    speedY = 0; 

    
    oscar = loadImage("oscar.png");
     
    this.x = x;
    this.y = y;
    }
  
  void update(){
     
    x += speedX;
    y += speedY; 
    
  }
  
  
  void display() {
    rect(x, y, w, h);
    image(oscar, x, y, w, h);
    //fill(0,255,0);
   
    
  }


  //boolean intersect(Tile4) {
  //}

  //boolean intersect(Tile2) {
  //}
  

}
