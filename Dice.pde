Die bosscat;
int counter=0;
int diceroll;
PImage her;
void setup()
  {
      background(250);
      size(450,450);
      textAlign(CENTER,CENTER);
      noLoop();
      ellipseMode(CENTER);
      rectMode(CENTER);
      her = loadImage("download.jpg");
      her.resize(450,450);
  }
  void draw()
  {  
    background(0);
    tint(255,0,0);
    image(her, 0,0);
    for (int j = 1; j < 5; j++){  
      for (int i = 1; i < 5; i++){
         bosscat=new Die(90*i+1, 90*j+1);
         bosscat.roll();
         bosscat.show();
      }
    }
    text("Total: " + counter, 225,420);
    counter=0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int myX, myY;
      Die(int x, int y) 
      {
          myX = x;
          myY = y;       
      }
      void roll()
      {
        diceroll=(int)(Math.random()*6+1);      
      }
      void show()
      {
          
          fill(255,0,0);
          rect(myX,myY,70,70,20);
           if (diceroll==1){
            fill(250);
            ellipse(myX, myY, 15, 15);
            counter = counter + 1;
          }
          else if (diceroll==2){
            fill(250);
            ellipse(myX+14, myY, 15, 15);
            ellipse(myX-14, myY, 15, 15);
            counter = counter + 2;
          }
          else if (diceroll==3){
            fill(250);
            ellipse(myX-20, myY+20, 15, 15);
            ellipse(myX, myY, 15, 15);
            ellipse(myX+20, myY-20, 15, 15);
            counter = counter + 3;
          }
          else if (diceroll==4){
            fill(250);
            ellipse(myX-17, myY+17, 15, 15);
            ellipse(myX-17, myY-17, 15, 15);
            ellipse(myX+17, myY+17, 15, 15);
            ellipse(myX+17, myY-17, 15, 15);
            counter = counter + 4;
          }
          else if (diceroll==5){
            fill(250);          
            ellipse(myX, myY, 15, 15);
            ellipse(myX-20, myY+20, 15, 15);
            ellipse(myX+20, myY-20, 15, 15);
            ellipse(myX+20, myY+20, 15, 15);
            ellipse(myX-20, myY-20, 15, 15);
            counter = counter + 5;
          }
          else if (diceroll==6){
            fill(250);
            ellipse(myX-14, myY-17, 15, 15);
            ellipse(myX-14, myY, 15, 15);
            ellipse(myX-14, myY+17, 15, 15);
            ellipse(myX+14, myY-17, 15, 15);
            ellipse(myX+14, myY, 15, 15);
            ellipse(myX+14, myY+17, 15, 15);
            counter = counter + 6;
          }
          diceroll=0;
      }
  }
