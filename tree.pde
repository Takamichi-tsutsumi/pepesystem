import processing.io.*;

int offset = 0;
int total = 10;
PImage[] images = new PImage[total];
float imgScale = 2;

void setup() {
  
  //size(640, 360);
  fullScreen();
  frameRate(10);
  
  for (int i = 0; i < 10; i++) {
    images[i] = loadImage("./images/tree" + (i+1) + ".png");
  }
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