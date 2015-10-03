/*  please implement your assign1 code in this file. */

PImage fighterImg, backgroundImg, backgroundImgTwo, hpImg, treasureImg, enemyImg;
int x, y, l, a, b, c;

void setup () {
  size(640,480) ; 
  
  fighterImg = loadImage("img/fighter.png");  //fighter
  hpImg = loadImage("img/hp.png"); 
  
  l=floor(random(20,215));  //hp random
  
  treasureImg = loadImage("img/treasure.png");  
  x=floor(random(20,520));  
  y=floor(random(50,430));  //treasure random
  
  enemyImg = loadImage("img/enemy.png");
  a=10;
  b=floor(random(50,400));  //enemy random
  
  backgroundImg=loadImage("img/bg1.png");
  backgroundImgTwo=loadImage("img/bg2.png");
  
  
  c=0;
}


void draw() {
  background(0);
    
  image(backgroundImgTwo,c,0);
  image(backgroundImg,c-640,0);
  image(backgroundImgTwo,c-1280,0);
  c++;
  c=c%1280;  //backgound moving

  stroke(255,0,0,230);
  fill(255,0,0,230);
  rectMode(CORNERS);
  rect(15,12,l,30);  //hp
  
  image(fighterImg,570,240);  
  image(hpImg,10,10);
  image(treasureImg,x,y);
  
  image(enemyImg,a,b);
  a+=3 ;
  a=a%640; //enemy moving
  
  
  
}
