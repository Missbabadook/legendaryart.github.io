





int colArrayCounter;
color[] colArray = {
  color(25, 50, 75),
  color(95, 160, 180),
  color(200, 190, 255),
  color(170, 150, 230),
  color(205, 225, 245),
  color(220, 240, 250)
};

void setup()  {
  size(900, 900);
  //surface.setLocation(987, 70);
  //noLoop();
  noStroke();
  mouseX = 10;
  frameRate(10);
}

void draw() {
  background(#282828);

translate(width/2, height/2);

 float rStep = 30;
 float rMax = 400;
 float rMin = mouseX;
 for (float r=rMin; r<rMax; r+=rStep) {
   
   float c = 2*PI*r; // circumference
   float cSegment = map(r, 0, rMax, rStep, rStep/2);
   float aSegment = floor(c/cSegment); //angle Segment
   float ellipseSize = map(r, 0, rMax, rStep*3/4-1, rStep/4);

    for(float a=0; a<360; a+=360/aSegment){
      //fill(random(255), random(255), random(255));
      colArrayCounter++;
      if(colArrayCounter>5) colArrayCounter = 0;
      fill(colArray[colArrayCounter]);
      fill(colArray[int(random(6))]);
   
    pushMatrix();
    rotate(radians(a));
    ellipse(r, 0, ellipseSize, ellipseSize);
    popMatrix();
    }
  }
}


void keyPressed()  {
  if(key=='w')  {
    background(#282828);
    redraw();
  }
}
