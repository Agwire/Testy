float x =0;
float speedx = 2;
PImage img;

void setup() {
  size(400, 400, P2D);
  img = loadImage("images.jpg");
  imageMode(CENTER);
}

void draw() {
  background(224, 259, 400);
  image(img, width/2, height/2);

  x += speedx;

  ellipse(x, width/2, 100, 100); 
  fill(255, 233, 178);
  stroke(255);

  if (x > 400 || x < 0) {
    speedx*= -1;
  }
  
  if (x < 0){
   ellipse(x, random(width), random(100, 255), random(100, 255)); 
  }
}

void mousePressed() {
  ellipse(x, random(width), random(100, 255), random(100, 255));
  fill(random(200, 255), random(200, 255), random(200, 255));
}