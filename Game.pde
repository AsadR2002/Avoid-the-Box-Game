float time = 0;
float x, y;
float sx, sy;
float c = 0;
float q = 0;
float r = 255;
float a, b ;
float sa, sb; 
boolean itime = false;


void setup() {
  size(1080, 800);
  frameRate(30);
  x = 250;
  y = 250;

  sx = 2;
  sy = 2;
  
  a = 0;
  b = 0;

  sa = 2;
  sb = 2;
}


void draw() {
  fill(0, 0, 0);
  rect(0, 0, width, height);

  fill(c, q, r);
  rect(x, y, 30, 30);
  fill(random(255), random(255), random(255));
  rect(a, b, 50, 50);
  
 
  x += sx;  
  y += sy;
  
  a += sa; 
  b += sb; 
  
  itime = true;
  
  
 
  if (x > width - 30) sx = -5;  
  else if (x < 0) sx = 5;
 
  if (y > height - 30) sy = -5;  
  else if (y < 0) sy = 5;
  
  if (a > width - 30) sa = -5;  
  else if (a < 0) sa = 5;
 
  if (b > height - 30) sb = -5;  
  else if (b < 0) sb = 5;
 
  
  if(x >= a && x <= a + 50 && y>= b && y <= b + 50){
    itime = false;
    exit();
    
  }
  
  if(itime == true) time++; 
  fill(255, 255, 0);
  textSize(20); 
  text(time/30, 100, 100);
   
  for(int i = 0; i < 100; i++){
    fill(255,0,0, random(255));
    rect(x - sx * i * 0.5 + (random (10) - 5),y - sy * i * 0.5 + (random (10) - 5),10,10);
  }
 
 
  for(int i = 0; i < 85; i++) {
   fill(random(255), random(255), random(255));
    rect(x - sx * i * 0.5 + (random (10) - 5),y - sy * i * 0.5 + (random (10) - 5),6,6);
  }
 
    for(int i = 0; i < 65; i++) {
   fill(random(255),random(255), random(255));
    rect(x - sx * i * 0.5 + (random (10) - 5),y - sy * i * 0.5 + (random (10) - 5),4,4);
  }
 
}

void keyPressed(){

 if (keyCode == RIGHT) sx += 5;
 if (keyCode == LEFT) sx -= 5;
 if (keyCode == DOWN) sy += 5;
 if (keyCode == UP) sy -= 5;
 if (key == 'a') c = random(255);
 if (key == 'a') q = random(255);
 if (key == 'a') r = random(255);

}
