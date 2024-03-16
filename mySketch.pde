PImage fighter;
PImage bg1;
PImage bg2;
PImage hp;
PImage treasure;
PImage enemy;

float treasureX =random(640);
float treasureY =random(480);

int enemyX;
int bg1X;
int bg2X;


void setup(){
  size(640,480); 
  
  //load files
  fighter = loadImage("fighter.png");
  bg1 = loadImage("bg1.png");
  hp = loadImage("hp.png");
  treasure = loadImage("treasure.png");
  enemy =loadImage("enemy.png");
  bg2 =loadImage("bg2.png");
  
  
 //position x of backgrounds 
  bg1X = 0;
  bg2X =-640;
  
  //position x of enemy
  enemyX =0;
  
  }

void draw(){
  background(0);
    
  //show backgrounds,fighter,treasure,enemy
  image(bg1,bg1X,0); 
  image(bg2,bg2X,0);
  
  image(fighter,550,200);      
  
  image(treasure,treasureX,treasureY);
  
  image(enemy,enemyX,300);
   
   //move the enemy
   enemyX+=2; 
   
    
  //scroll the backgrounds
  bg1X++;
  bg2X++;
  
  bg1X %= width;
  bg2X %= width;
  enemyX%=width;
  
  if(bg1X>627){
    bg1X=-640;
  }
  if(bg2X>627){
    bg2X=-640;
  }
  //health bar
  noStroke();
  fill(255,0,0);
  rect(20,20,100,20);
  
  image(hp,10,10);             
  
}
