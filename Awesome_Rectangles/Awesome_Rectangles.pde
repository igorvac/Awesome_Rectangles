float[][] posX; //<>//
float[][] posY;
float[][] sizX;
float[][] sizY;
int cols = 6;
int rows = 6;
void setup() {
  size(600, 600);



  sizX = new float[cols][rows];
  posX = new float[cols][rows];
  sizY = new float[cols][rows];
  posY = new float[cols][rows];

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      sizX[i][j] = 50;
      sizY[i][j] = 50;
    }
  }
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (j == 0) {
        posX[i][j] = 0;
      } else {
        posX[i][j] = posX[i][j-1] + 100;
      }
    }
  }
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (i == 0) {
        posY[i][j] = 0;
      } else {
        posY[i][j] = i * 100;
      }
    }
  }
}

void draw() {
  rectMode(CENTER);

  background(100);
  noFill();
  stroke(255);
  for (int i = 1; i < cols; i++) {
    for (int j = 1; j < rows; j++) {
      rect(posX[i][j], posY[i][j], sizX[i][j], sizY[i][j]);
      //rect(posX[i][j]+sizX[i][j]/2, posY[i][j]+sizX[i][j]/2, sizX[i][j], sizY[i][j]);
      println(posX[i][j], posY[i][j]);
    }
  }

  noLoop();
}




/* 
 DARK AREA - DO NOT TRESPASS - DARK AREA
 
 for (int i = 0; i < quantity; i++) {
 if (i == 0) {
 pos[i].x = 0;
 } else {
 pos[i].x = pos[i-1].x + siz[i].x;
 }
 for (int j = 0; j < pos.length; i++) {
 if (j == 0) {
 pos[j].y = 0;
 } else {
 pos[j].y = pos[j-1].y + siz[j].y;
 }
 }
 rect(pos[i].x, pos[i].y, siz[i].x, siz[i].y);
 println(i + " " + pos[i].x + " " + pos[i].y);
 }
 
 
 
 
 */