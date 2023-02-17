/*
  7 branches with set segment lengths and varying angles
 clusters with decreasung lengths 
 */

public void setup() {
  size(800, 800);
  noLoop();
}

public void draw() {
  translate(400, 400);
  background(200);
  Tendrils((float)(Math.random()*2*PI/7), 10, 22/*length*/, 0, 0);
}

public void mousePressed() {
  redraw();
}

float x1, y1;

public void Tendril(float angle, int num1/*single line*/, float len, float x, float y) {
  /*
  short segments form a line
   */
  if (num1 < 1)
    return;
  else {
    x1 = x + (float)(Math.cos(angle))*len;
    y1 = y + (float)(Math.sin(angle))*len;
    angle = angle + (float)(Math.random()*PI/8 - PI/16);
    line(x, y, x1, y1);
    Tendril(angle, num1 - 1, len, x1, y1);
  }
}

public void Tendrils(float angle, int num1, float len, float x, float y) {
  /*
  7 lines from one point
   */ 
  if(len <= 6)
    stroke((float)(Math.random()*256));
  if (len <= 2)
    return;
  else {
    strokeWeight(1);
    Tendril(angle, num1, len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
    Tendril(angle + 2*PI/7, num1,  len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
    Tendril(angle + 4*PI/7, num1,  len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
    Tendril(angle + 6*PI/7, num1,  len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
    Tendril(angle + 8*PI/7, num1,  len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
    Tendril(angle + 10*PI/7, num1,  len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
    Tendril(angle + 12*PI/7, num1,  len, x, y);
    Tendrils(angle, num1,  len/2, x1, y1);
  }
}
