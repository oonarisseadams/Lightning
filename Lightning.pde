/*
//Open the Lightning.pde file. You'll need to add some code 
At the top of the program declare 4 int variables:
      startX, startY, endX and endY
Initialize startX to 0, startY to 150, endX to 0 and endY to 150
//void setup() needs to set the strokeWeight() and background() of your applet
//void draw() needs to do two things:
-set the stroke()color of the lightning bolt to some random value using Math.random()
-a while loop that repeats the following until the endX is off the screen:
    set endX to startX plus a random integer from 0 to 9
    set endY to startY plus a random integer from -9 to 9
    draw a line() with endpoints startX,startY,endX,endY
    set startX equal to endX
    set startY equal to endY
//void mousePressed() needs to set startX,startY,endX,endY back to their original values.
*/

//Name: Oona Risse-Adams
//Class: APComputerScience/Java, Block 3 Simon F'17
//Lightning Design 

//set variables
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

//background and strokeweight, etc
void setup(){
  size(400,400);
  //black
  background(250, 225, 250);
  strokeWeight(1);
  
}

//draw for everything
void draw(){
  hand();
  socket();
  lightning();
}

//lightning function
void lightning(){
stroke((int)(Math.random()* 255), (int)(Math.random()*280), (int)(Math.random()*150));
  while(endX < 300){
    endX = startX + (int)((Math.random()*9));
    endY = startY +(int)((Math.random()*-9)+10);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
}
}

//hand function
void hand(){
    fill(227, 208, 150);
    noStroke();
    ellipse(320,250,190,80);
    triangle(300,250,400,250,400,310);
    ellipse(380,230,50,90);
    ellipse(300,177,100,50);
    triangle(323,155,400,190,280,280);
    ellipse(280,200,60,50);
    rect(390,190,10,40);
    ellipse(260,220,60,70);
    ellipse(218,230,240,30);
}

//socket function
void socket(){
    fill(255, 255, 255);
    rect(0,150,80,80);
    fill(0,0,0);
    rect(15,170,10,20);
    rect(50,170,10,20);
    rect(32.5,200,10,20);
}

//mousePressed function
void mousePressed(){
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
