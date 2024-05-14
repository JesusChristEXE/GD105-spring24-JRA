/*
I decided to make a game like meteor but you cant move and you have to defend youself
from squares and circles and you can only take three hits of else its game over.
*/

// Game variables
int playerX, playerY;
float playerAngle;
int playerHealth = 3;
boolean gameOver = false;
ArrayList<Bullet> bullets;
ArrayList<Enemy> enemies;
int enemySpawnInterval = 60;
int frameCount = 0;
PFont font;

void setup() {
  size(800, 800);
  playerX = width / 2;
  playerY = height / 2;
  bullets = new ArrayList<Bullet>();
  enemies = new ArrayList<Enemy>();
  font = createFont("Arial", 20, true);
}

void draw() {
  background(0);
  if (gameOver) {
    displayGameOver();
    return;
  }
  
  drawPlayer();
  drawBarrier();
  updateBullets();
  updateEnemies();
  checkCollisions();
  
  if (frameCount % enemySpawnInterval == 0) {
    spawnEnemy();
  }
  
  frameCount++;
}

void drawPlayer() {
  playerAngle = atan2(mouseY - playerY, mouseX - playerX);
  pushMatrix();
  translate(playerX, playerY);
  rotate(playerAngle);
  fill(255, 0, 0);
  triangle(-15, -10, -15, 10, 15, 0);
  popMatrix();
}

void drawBarrier() {
  noFill();
  stroke(255);
  ellipse(playerX, playerY, 100, 100);
}

void updateBullets() {
  for (int i = bullets.size() - 1; i >= 0; i--) {
    Bullet b = bullets.get(i);
    b.update();
    b.display();
    if (b.isOffScreen()) {
      bullets.remove(i);
    }
  }
}

void updateEnemies() {
  for (int i = enemies.size() - 1; i >= 0; i--) {
    Enemy e = enemies.get(i);
    e.update();
    e.display();
    if (dist(playerX, playerY, e.x, e.y) < 50) {
      playerHealth--;
      enemies.remove(i);
      if (playerHealth <= 0) {
        gameOver = true;
      }
    }
  }
}

void checkCollisions() {
  for (int i = bullets.size() - 1; i >= 0; i--) {
    Bullet b = bullets.get(i);
    for (int j = enemies.size() - 1; j >= 0; j--) {
      Enemy e = enemies.get(j);
      if (dist(b.x, b.y, e.x, e.y) < 15) {
        bullets.remove(i);
        enemies.remove(j);
        break;
      }
    }
  }
}

void spawnEnemy() {
  float angle = random(TWO_PI);
  float enemyX = playerX + cos(angle) * width / 2;
  float enemyY = playerY + sin(angle) * height / 2;
  if (random(1) < 0.5) {
    enemies.add(new Enemy(enemyX, enemyY, 20, 20)); // Square enemy
  } else {
    enemies.add(new Enemy(enemyX, enemyY, 20)); // Circle enemy
  }
}

void displayGameOver() {
  background(0);
  textFont(font);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("GAME OVER", width / 2, height / 2);
}

void mousePressed() {
  if (gameOver) {
    resetGame();
  } else {
    bullets.add(new Bullet(playerX, playerY, playerAngle));
  }
}

void resetGame() {
  playerHealth = 3;
  bullets.clear();
  enemies.clear();
  gameOver = false;
  frameCount = 0;
}

class Bullet {
  float x, y, angle, speed;
  
  Bullet(float x, float y, float angle) {
    this.x = x;
    this.y = y;
    this.angle = angle;
    this.speed = 10;
  }
  
  void update() {
    x += cos(angle) * speed;
    y += sin(angle) * speed;
  }
  
  void display() {
    fill(255, 255, 0);
    noStroke();
    ellipse(x, y, 5, 5);
  }
  
  boolean isOffScreen() {
    return x < 0 || x > width || y < 0 || y > height;
  }
}

class Enemy {
  float x, y;
  float w, h;
  float speed = 2;
  
  // Square enemy
  Enemy(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  // Circle enemy
  Enemy(float x, float y, float diameter) {
    this.x = x;
    this.y = y;
    this.w = diameter;
    this.h = diameter;
  }
  
  void update() {
    float angle = atan2(playerY - y, playerX - x);
    x += cos(angle) * speed;
    y += sin(angle) * speed;
  }
  
  void display() {
    if (w == h) {
      fill(0, 0, 255);
      ellipse(x, y, w, h);
    } else {
      fill(0, 255, 0);
      rect(x, y, w, h);
    }
  }
}
