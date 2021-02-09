float i=0;
float angle= 0.0;

void setup(){
fullScreen(P3D);
noStroke();
blendMode(ADD);
background(0);
while(i<100){
ellipse_aleatorio(random(width), random(height), i);
i++;
}
}
void ellipse_aleatorio(float x, float y, float r){
ellipse(x, y, r, r);
fill(random(0,192), random(0,57), random(0,43));
}
void draw() {
  float scalar = sin(angle) + 2;
  scale(scalar);
  
  strokeWeight(1.0 / scalar);
  ellipse_aleatorio(random(width), random(height), i);
  angle += 0.1;
}
