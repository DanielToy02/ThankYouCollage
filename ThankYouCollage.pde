PImage imgp;
float heartX = 0;
float speed =10;
float ball = 255;

void setup() {
  size(900, 700);
}

void draw() {

  imgp=loadImage("vap_1394528093.jpg");
  image(imgp, 0, 0, 900, 700);
  
  fill(216, 128, 28, ball);
  ellipse(mouseX, mouseY, 50, 50);
  
  text("BALL IS LIFE",600,650);
  fill(0);
  textAlign(CENTER);
  textSize(100);
  

  heartX = heartX+speed;

  smooth();
  noStroke();
  translate(heartX, 0);
  scale(2);
  fill(random(255), 105, 180,100);
  beginShape();
  vertex(50, 15);
  bezierVertex(50, -5, 100, 5, 50, 45);
  vertex(50, 15);
  bezierVertex(50, -5, 0, 5, 50, 45);
  endShape();
  if (heartX > 700)
  {
    speed= -10;
  }
  if (heartX < 0)
  {
    speed= 10;
  }
  
}

  
void mousePressed(){
  if (ball == 255)
  {
    ball = 0;
  } else {
    ball = 255;
  }
}
