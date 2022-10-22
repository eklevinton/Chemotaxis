class Bacteria{
  
  
int myX, myY;
int a, b, c;
Bacteria()
{
 
 myX = 200;
 myY = 400;
  }
  
  
  
  
  
void walk()
{
  if(mouseX > myX){
    myX = myX + (int)(Math.random()*19)-1;
  }
  else{
    myX = myX - (int)(Math.random()*19)+1;
  }
  if(mouseY > myY){
    myY = myY + (int)(Math.random()*19)-1;
  }
  else{
    myY = myY - (int)(Math.random()*19)+1;
  }
}
void show()
{
 

  
 //fill(230,(int)(Math.random()*140),(int)(Math.random()*120));
//stroke(250,(int)(Math.random()*170),(int)(Math.random()*150)); 
//stroke(0);

fill((int)(Math.random()*236),(int)(Math.random()*241),(int)(Math.random()*231));
stroke(120, 40, 31);
strokeWeight(1);
strokeJoin(ROUND);

//fill((int)(Math.random()*236),(int)(Math.random()*241),(int)(Math.random()*231));

//strawberry body
fill(230,(int)(Math.random()*140),(int)(Math.random()*120));
triangle(myX, myY, myX + 15, myY + 30, myX + 25, myY + 1);
fill(230,(int)(Math.random()*140),(int)(Math.random()*120));


//LEAVES
noStroke();
fill(102, 187, 106);
triangle(myX+3, myY, myX+3, myY - 5, myX -5, myY -5);
//triangle(x-0,y-34,x+15,y-60,x+30,y-40);
//fill(56, 142, 60);




  }
}

Bacteria [] oldPplHome;
void setup()
{
  size(600,600);
  background(197, 225, 165);
  frameRate(30);
  oldPplHome = new Bacteria[20];
  for(int i = 0; i < oldPplHome.length; i++){
  oldPplHome[i] = new Bacteria();
  }
}
void draw()
{
  if(mousePressed){
    background(197, 225, 165);
  }
  for(int i = 0; i < oldPplHome.length; i++){
  oldPplHome[i].show();
  oldPplHome[i].walk();
  }
  
  
  
  
}

