PVector[] pos;
PVector[] siz;
int quantity = 7;

void setup() {
  rectMode(CENTER);
  siz = new PVector[quantity];
  pos = new PVector[quantity];
  
  for (int i = 0; i < pos.length; i++) {
    siz[i] = new PVector(width/quantity, height/quantity);
    if (i == 0) {
      pos[i] = new PVector(0, 0);
    } 
    if (i > 0 && i != pos.length-1) {
      
    } 
    if (i == pos.length-1) {
    }
    pos[i] = new PVector(0, 0);
    
  }
  size(600, 600);
}

void draw() {
  background(100);
  noFill();
  stroke(255);
  rect(pos[0].x, pos[0].y, siz[0].x, siz[0].y);
}