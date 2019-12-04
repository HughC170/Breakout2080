import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioPlayer laser;
AudioPlayer hurt;
AudioPlayer tough;
AudioPlayer levelup;
AudioPlayer PWR;
PFont Font;

Objects OBJ;
 
void setup()
{
  size(600, 600);
  OBJ = new Objects();
  minim = new Minim(this);
  Font = loadFont("Verdana-Italic-48.vlw");
  song = minim.loadFile("Kavinsky - 1986 (HQ).mp3");
  laser = minim.loadFile("Laser_Shoot.wav");
  hurt = minim.loadFile("Hit_Hurt.wav");
  tough = minim.loadFile("Hit_Hurt2.wav");
  levelup = minim.loadFile("Powerup.wav");
  PWR = minim.loadFile("Powerup4.wav");
  song.loop();
  for(int x = 0; x < Brickbreak.length; x ++)
{
  for(int y = 0; y < Brickbreak.length; y ++)
  {
    Brickbreak [x][y] = true;
  }
}
for(int x = 0; x < Brickdestroyed.length; x ++)
{
  for(int y = 0; y < Brickdestroyed.length; y ++)
  {
    Brickdestroyed [x][y] = true;
  }
}
 for(int P = 0; P < BRICKBREAK.length; P ++)
{
  for(int O = 0; O < 4; O ++)
  {
    BRICKBREAK [P][O] = true;
  }
}
for(int X = 0; X < Brickbreak.length; X ++)
{
  for(int Y = 0; Y < Brickbreak.length; Y ++)
  {
    Brickbreak [X][Y] = true;
  }
}
for(int X = 0; X < brickbreak.length; X ++)
{
  for(int Y = 0; Y < brickbreak.length; Y ++)
  {
    brickbreak [X][Y] = true;
  }
}
for(int X = 0; X < scarybrick.length; X ++)
{
  for(int Y = 0; Y < scarybrick.length; Y ++)
  {
    scarybrick [X][Y] = true;
  }
}
}

 int xpos = 300;
 float ypos = 580;
 float playerwidth = 70;
 float a = 0;
 boolean[][] Brickbreak = new boolean[8][8];
 boolean[][] BRICKBREAK = new boolean[8][8];
 boolean[][] Brickdestroyed = new boolean[8][8];
 boolean[][] brickbreak = new boolean[10][10];
  boolean[][] scarybrick= new boolean[10][10];
float brickL = 40;
float brickH = 20;
float r = 0;
int lives = 3;
int blives = 130;
float f = 0;
float fq = 0;
float powertext = 0;
float Powertext = 0;
float PowerText = 0;

void Playercontrol()
{
    if (keyPressed)
  {
   if (keyCode == RIGHT && xpos < width - playerwidth)
   {
    xpos += 6;
   }
   if (keyCode == LEFT && xpos > 0)
   {
    xpos -= 6;
   }
  }
}

void gridd()
{
  background(30, 10, 45);
float y = 400;
  float x = 0;
  float grid = 30;
  while (y < 600 && x < 600)
  {
    strokeWeight(2);
    line(0, y, 600, y);
    grid += 10;
    y += grid;
  }
  float[] gridw = {120, 300, 480};
  for(int p = 0; p < 3; p++)
    {
      x += 150;
      line(x, 400, gridw[p], 600);
    }
}
   
void draw()
{
  background(30, 10, 45);
  fill(90, 70, 250);
  if(a < 1)
  {
   OBJ.Startscreen();
     if (keyPressed)
  {
   if (keyCode == UP)
   {
    a++;
   }
  }
  }
  else{
  stroke(0);
  OBJ.powers();
  rect(xpos, ypos, playerwidth, 10);//the player
  Playercontrol();
  OBJ.move();
  OBJ.display();
  OBJ.displayb();
  OBJ.level();
  OBJ.SCORE();
  OBJ.GameOver();
  OBJ.Winningscreen();
  OBJ.respawn();
  }
}