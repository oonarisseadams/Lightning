/*
//Open the Lightning.pde file. You'll need to add some code At the top of the program
    declare 4 int variables startX, startY, endX and endY. Initialize startX to 0, startY to 150, endX to 0 and endY to 150
//void setup() needs to set the strokeWeight() and background() of your applet
//void draw() needs to do two things:
-set the stroke()color of the lightning bolt to some random value using Math.random()
-a while loop that repeats the following until the endX is off the screen:
*/
    set endX to startX plus a random integer from 0 to 9
    set endY to startY plus a random integer from -9 to 9
    draw a line() with endpoints startX,startY,endX,endY
    set startX equal to endX
    set startY equal to endY

void mousePressed() needs to set startX,startY,endX,endY back to their original values.
startX = 0;
startY = 150;
endX = 0;
endY = 150;

//background and strokeweight, etc
void setup()
{
  size(300,300);
  background(0,0,0);
  strokeWeight(2);
  
}
void draw()
{

}
void mousePressed()
{

}

