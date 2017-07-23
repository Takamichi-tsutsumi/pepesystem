import processing.io.*;

int offset = 0;
int total = 10;
PImage[] images = new PImage[total];
float imgScale = 2;

void setup() {
  
  //size(640, 360);
  fullScreen();
  frameRate(10);
  
  images[0] = loadImage("tree01.png");
  images[1] = loadImage("tree02.png");
  images[2] = loadImage("tree03.png");
  images[3] = loadImage("tree04.png");
  images[4] = loadImage("tree05.png");
  images[5] = loadImage("tree06.png");
  images[6] = loadImage("tree07.png");
  images[7] = loadImage("tree08.png");
  images[8] = loadImage("tree09.png");
  images[9] = loadImage("tree10.png");
}

void draw() {
  println("Draw called");
  background(#FFFFFF);
  PImage image = images[offset];
  float imgWidth = image.width * imgScale;
  float imgHeight = image.height * imgScale;

  image(image, width/2 - imgWidth/2, height-imgHeight, imgWidth, imgHeight);
}

void updateImage() {
  offset = (offset + 1) % total;
}

void mouseClicked() {
  println("Mouse clicked");
  updateImage();
}