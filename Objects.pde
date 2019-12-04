class Objects {
  int xball;
  float yball;
  float yspeed;
  float xspeed;
  float yblock;
  float blockh;
  float blockw;
  int score;
  
  Objects()
  {
    xball = 0;
    yball = 400;
    yspeed = -4;
    xspeed = -4;
    yblock = 100;
    blockh = 30;
    blockw = 50;
    score = 0;
  }
  void display()
  {
    fill(200);
      ellipse(xball, yball, 10, 10);  
      rectMode(CORNER);
      if(yball > 600)
      {
        background(180, 0, 0);
      }
  }
  void SCORE()
  {
    text("SCORE:"+score, 100, 20);
  }
  void collision()
  {
    laser.play();
          laser.rewind();
          yspeed *= -1;
          score += 100;
  }
  void brickcolour()
  {
    stroke(0);
      fill(135, 15, 140);
  }
 void displayb()
  {
for(int h = 1; h < Brickbreak.length; h ++)
  {
    for(int o = 1; o < Brickbreak.length; o ++)
    {
    if (Brickbreak[h][o] == true) {
      brickcolour();
      rect(h * 70, o * 30, brickL, brickH);
      if(xball > h * 70 && xball < h * 70 + brickL)
      {
        if(yball < o * 30 + brickH && yball > o * 30)
        {
          Brickbreak[h][o] = false;
          collision();
          if(yball < o * 30 + brickH - 3 && yball > o * 30 + 3)
          {
            xspeed *= -1;
          }
          }
      }
    }  
    }
  }
  }

void level()
{
     if(score == 4900)
   {
     levelup.play();
     levelup.rewind();
     if(yball > 450)
     {
       f ++;
     }
   }
   
     if(f > 0)
     {
     for(int t = 1; t < BRICKBREAK.length; t ++)
  {
    for(int j = 2; j < BRICKBREAK.length; j += 4)
    {
    for(int s = 1; s < BRICKBREAK.length; s ++)
    {
      for(int k = 2; k < 4; k += 2)
      {
    if (BRICKBREAK[t][s] == true) {
      BRICKBREAK[j][k] = false;
      brickcolour();
      rect(t * 70, s * 30, brickL, brickH);
      fill(135, 15, 140);
      if(xball > t * 70 && xball < t * 70 + brickL)
      {
        if(yball < s * 30 + brickH && yball > s * 30)
        {
          BRICKBREAK[t][s] = false;
         collision();
          if(yball < s * 30 + brickH - 3 && yball > s * 30 + 3)
          {
            xspeed *= -1;
          }
          }
      }
    }
      if(Brickdestroyed[j][k] == true){
        fill(90, 90, 90);
      rect(j * 70, k * 30, brickL, brickH);
      brickcolour();
       if(xball > j * 70 && xball < j * 70 + brickL)
      {
        if(yball < k * 30 + brickH && yball > k * 30)
        {
          yspeed *= -1;
          blives--;
          if(blives == 0 || blives < -130)
          {
            Brickdestroyed[j][k] = false;
          }
          tough.play();
          tough.rewind();
          if(yball < k * 30 + brickH - 3 && yball > k * 30 + 3)
          {
            xspeed *= -1;
          }
          }
      }
      }
    }
    }
    }
  }
     
   }
   if(score > 6700)
   {
     levelup.play();
     if (yball > 450)
     {
       fq ++;
     }
   }
   if(fq > 0)
   {
     text("FINAL LEVEL", 300, 20);
     for(int h = 0; h < brickbreak.length; h += 2)
  {
    for(int j = 1; j < scarybrick.length; j += 2)
    {
    for(int o = 1; o < brickbreak.length; o += 2)
    {
      for(int k = 2; k < scarybrick.length; k += 2)
      {
    if (brickbreak[h][o] == true) {
      brickcolour();
      rect(h * 70, o * 30, brickL, brickH);
      if(xball > h * 70 && xball < h * 70 + brickL)
      {
        if(yball < o * 30 + brickH && yball > o * 30)
        {
          brickbreak[h][o] = false;
          collision();
          if(yball < o * 30 + brickH - 3 && yball > o * 30 + 3)
          {
            xspeed *= -1;
          }
          }
      }
    }  
    if(scarybrick[j][k] == true)
    {
      fill(255, 0, 0);
      rect(j * 70, k * 30, brickL, brickH);
       if(xball > j * 70 && xball < j * 70 + brickL)
      {
        if(yball < k * 30 + brickH && yball > k * 30)
        {
          scarybrick[j][k] = false;
          yspeed = random(4, 7);
          xspeed = random(4, 7);
          collision();
          yspeed *= -1;
          if(yball < k * 30 + brickH - 3 && yball > k * 30 + 3)
          {
            xspeed *= -1;
          }
          }
      }
    }
      }
    }
    }
  }
   }
}  
void powers()
{
  if(score > 3000)
  {
    PWR.play();
    playerwidth = 140;
    fill(0, 255, 50);
    powertext ++;
    if (powertext > 0 && powertext < 100)
    {
      stroke(0, 255, 50);
      text("EXPANSION", 300, 300);
      stroke(0);
    }
    if(score > 4000)
    {
      playerwidth = 70;
      fill(90, 70, 250);
    }
  }
   if(score < 6500)
 {
   if (score > 6000)
   {
     if (PowerText > 0 && PowerText < 100)
    {
      if(PowerText < 10)
      {
      PWR.rewind();
      }
      stroke(230, 190, 30);
      text("SLO MO", 300, 300);
      stroke(0);
    }
     PWR.play();
     fill(230, 190, 30);
     PowerText ++;
     if(xspeed == -4)
     {
       xspeed = -2;
     }
     if(xspeed == 4)
     {
       xspeed = 2;
     }
     if(yspeed == 4)
     {
       yspeed = 2;
     }
     if(yspeed == - 4)
     {
       yspeed = - 2;
     }
   }
 }
 if(score < 10000)
 {
  if(score > 9000)
  {
     if (Powertext > 0 && Powertext < 100)
    {
      if(Powertext < 10)
      {
      PWR.rewind();
      }
      stroke(255);
      text("CLONE", 300, 300);
      stroke(0);
    }
    PWR.play();
    float zpos = xpos + 100;
    fill(255);
    rect(zpos, ypos, playerwidth, 10);
    Powertext ++;
       if(xball > zpos - 1 && xball < zpos + playerwidth)
    {
      if(yball > 570)
    {
tough.play();
      tough.rewind();
      yspeed *= -1;
       if(xball > zpos - 1 && xball < zpos + playerwidth/4)//playerleft
      {
        if(xspeed == 4)
        {
          xspeed *= -1;
        }
      }
      if(xball > zpos + (playerwidth/4 * 3) && xball < zpos + playerwidth)//playerright
      {
        if(xspeed == -4)
        {
          xspeed *= -1;
        }
      }
    }
    }
  }
 }

}
  void respawn()
  {
    if(yball > 615)
    {
      lives --;
      hurt.play();
      hurt.rewind();
    }
    if(yball > 615)
    {
      xball = 0;
      yball = 500;
      yspeed *= -1;
    }
    if(lives == 1){
      fill (255, 0, 0);
    }
    if(lives > 0)
    {
    text("LIVES:" + lives, 500, 20);
    }
  }
  void move()
  {
    yball = yball += yspeed;
    xball = xball += xspeed;
    if(yball < 0)
    {
      yspeed *= -1;
    }
    if(xball < 0)
    {
      xspeed *= -1;
    }
    if(xball > 590)
    {
      xspeed *= -1;
    }
    if(xball > xpos - 1 && xball < xpos + playerwidth)
    {
      if(yball > 575)
    {
      tough.play();
      tough.rewind();
      yspeed *= -1;
      if(xball > xpos - 1 && xball < xpos + playerwidth/4)//playerleft
      {
        if(xspeed == 4)
        {
          xspeed *= -1;
        }
      }
      if(xball > xpos + (playerwidth/4 * 3) && xball < xpos + playerwidth)//playerright
      {
        if(xspeed == -4)
        {
          xspeed *= -1;
        }
      }
    }
    }
  }
  void Startscreen()
{
  stroke(90, 70, 250);
  gridd();
  textFont(Font, 40);
  textAlign(CENTER, CENTER);
  fill(200);
  text("BREAKOUT 2080", 300, 150);
  textFont(Font, 20);
  fill(150);
  text("BREAK ALL THE BLOCKS", 300, 250);
  text("USE THE LEFT AND RIGHT KEYS", 300, 300);
  text("PRESS UP TO START", 300, 350);
}
  void GameOver()
    {
      if(lives < 1)  
      {
   stroke(255, 0, 0);
   gridd();
   textFont(Font, 50);
   fill(255, 0, 0);
   text("GAME OVER", 300, 200);
   noLoop();
    textFont(Font, 30);
    text("YOUR SCORE:"+score, 300, 300);
      }
  }
   void Winningscreen()
 {
   if(score == 10900)
   {
   stroke(0, 255, 50);
   gridd();
   textFont(Font, 50);
   fill(0, 255, 50);
   text("YOU WIN!", 300, 200);
   noLoop();
   text("YOUR SCORE:"+score, 300, 300);
   }
 }
}