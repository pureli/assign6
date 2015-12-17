class Bullet {
  int x = 0;
  int y = 0;
  PImage bulletImg;
  
  Bullet(int x, int y) 
  {
    this.x = x;
    this.y = y;
    bulletImg = loadImage("img/shoot.png");
  }

  //連續圖片向左移動
  void draw()
  {
    for(int i = 0;i < 5;i++)
    {
       image(bulletImg,x,y); 
    }      
       x-=10;
  }

  //子彈與敵機碰撞偵測（敵機死）
  boolean isHitE(int enemyX,int enemyY,int enemyW,int enemyH)
  {
    if(this.x + bulletImg.width >= enemyX && enemyX + enemyW >= this.x && this.y + bulletImg.height >= enemyY && enemyY + enemyH >= this.y)
    {
          return true;
    }
          return false;    
  }

}
