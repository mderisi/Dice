


Dice bob;
boolean pressed = false;
int counter = 0;

void setup()
{
  size(500, 600);

 background(#FFD586);
}


void mousePressed(){
  
  pressed = true;
   
}


  
void draw()
{

  
  if (pressed == true){
  
  for (int y = 5; y < 500; y = y + 100){
    for (int x = 5; x < 500; x = x + 100){
    Dice bob = new Dice(x, y);  
     bob.show();
    }

  }
  
  fill(#FFD586);
  rect(100, 510, 300, 80, 10);
  fill(#080707);
  textSize(30);
  text("Total : " + counter, 170, 540, 400, 100);
  
  pressed = false;  
  counter = 0;
  }

  
}




class Dice
{
  //three member variables

  int myX, myY;

  //three member functions
  Dice(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }


  void show()
  {
    int roll = (int)(Math.random()*6)+1;
    fill(#D3D3D3);
    rect(myX + 3, myY + 3, 90, 90, 20);
    fill(255);
    rect(myX, myY, 90, 90, 20);
    fill(0);
    
  if (roll == 1){
      ellipse( myX + 45, myY + 45, 10, 10);
      counter = counter + 1;
  } 
  if (roll == 2){
      ellipse( myX + 25, myY + 45, 10, 10);
      ellipse(myX + 65, myY + 45, 10, 10);
       counter = counter + 2;
  }
  if (roll == 3){
    ellipse(myX + 25, myY + 25, 10, 10);
    ellipse(myX + 45, myY + 45, 10, 10);
    ellipse(myX + 65, myY + 65, 10, 10);
     counter = counter + 3;
  }
  if(roll == 4){
    ellipse(myX + 25, myY + 25, 10, 10);
    ellipse(myX + 65, myY + 25, 10, 10);
    ellipse(myX + 25, myY + 65, 10, 10);
    ellipse(myX + 65, myY + 65, 10, 10);
     counter = counter + 4;
  }
  if (roll == 5){
    ellipse(myX + 25, myY + 25, 10, 10);
    ellipse(myX + 65, myY + 25, 10, 10);
    ellipse(myX + 45, myY + 45, 10, 10);
    ellipse(myX + 25, myY + 65, 10, 10);
    ellipse(myX + 65, myY + 65, 10, 10); 
     counter = counter + 5;
  }
  if (roll == 6){
    ellipse(myX + 25, myY + 20, 10, 10);
    ellipse(myX + 65, myY + 20, 10, 10);
    ellipse(myX + 25, myY + 45, 10, 10);
    ellipse(myX + 65, myY + 45, 10, 10);
    ellipse(myX + 25, myY + 70, 10, 10);
    ellipse(myX + 65, myY + 70, 10, 10);
     counter = counter + 6;
  }
}
  
  
  
  
}
