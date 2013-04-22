int width, height;
int x, y;
int radius;
int delay;
float angle, rotation;

void setup() {
  width = 300;
  height = 300;
  x = width / 3;
  y = 0; //height / 3;
  radius = width / 2;
  angle = 0.0;
  delay = 256;
  rotation = 2 * PI / delay;

  size(width, height);
  background(125);
  fill(255);
}

void draw() {
  // redraw the background to remove the trails effect
  background(125);

  // draw the square
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(Math.pow(angle, 2));

  fill(0, 121, 184);
  rectMode(CENTER);
  rect(0, 0, width / 2, height / 2);
  popMatrix();

  // draw the circle
  pushMatrix();
  rotate(angle);
  fill(255);
  ellipse(x, y, radius, radius);
  popMatrix();

  if (angle > 0.5 * PI || angle < 0) {
    rotation = -rotation;
  }
  angle += rotation;
}
