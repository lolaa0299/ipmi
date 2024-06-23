PImage espiral;
int numTurns = 5; 
float angleStep = 0.1; 
float radiusStep = 0.5; 

void setup() {
  espiral = loadImage (espiral.jpg);
  image(espiral,0,0,400, 500);
  size(800, 400);
  background(255); 
  stroke(0); 
  noFill(); 
}

void draw() {
  background(255); 
  translate(600, height / 2); 
  float radius = 0;
  float angle = 0;
  
  beginShape();
  for (int i = 0; i < numTurns * TWO_PI / angleStep; i++) {
    float x = radius * cos(angle);
    float y = radius * sin(angle);
    vertex(x, y);
    angle += angleStep;
    radius += radiusStep;
  }
  endShape();
}
