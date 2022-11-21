PImage[] numbers = new PImage[10]; //array with length of 10 for number images

void setup() {
  size(800,300); //size of the run window
  background(255); //white background colour
    for(int index=0;index<numbers.length;index++) { //index variable has an initial value of 0, must be less than the length of numbers array, and increases by increments of 1
      numbers[index]=loadImage(str(index)+".png"); //loads all images in the data folder with a .png extension
    }
}

void draw() {
image(numbers[frameCount%10],width*.75,0); //displayed on the right, cycles through the images in numbers array at a rate of the remainder of frameCount divided by 10
image(numbers[frameCount%100/10],width/2,0); //displayed in the middle right, cycles through the images in numbers array at a rate of the remainder of frameCount divided by 100, which is then divided by 10
image(numbers[frameCount%1000/100],width*.25,0); //displayed in the middle left, cycles through the images in numbers array at a rate of the remainder of frameCount divided by 1000, which is then divided by 100
image(numbers[frameCount%10000/1000],0,0); //diisplayed on the left, cycles through the images in numbers array at a rate of the remainder of frameCount divided by 10000, which is then divided by 1000
}
