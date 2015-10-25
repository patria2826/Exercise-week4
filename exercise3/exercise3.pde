PImage replay;
int gamestate;
final int GAMEPLAY=0, REPLAY=2;

void setup(){
  size(480,480);
  colorMode(HSB);
  replay = loadImage("img/restart.png");
  gamestate = GAMEPLAY;
  mouseX = mouseY = 0;
  
}

float a = 0;
int moTOP, moBOT;

void draw(){
    background(255);
    switch(gamestate) {
    case GAMEPLAY:
    //~~~PLAY~~~
    //bar
    a += 0.07;
    for(float x=40; x<440; x=x+40){
    float moTOP = 180+sin(a+x/200)*60.0;
    float moBOT = 300+sin(a+x/200)*60.0;
    fill(100,200,105);
    stroke(255,255,0);
    rect(x,0,40,moTOP); rect(x,moBOT,40,480);
    //mouse
    fill(255,255,200);
    noStroke();
    ellipse(mouseX, mouseY, 40, 40);
    //lose
    float w = abs(mouseX - x - 5);
    if(w <= 50 && mouseX+15 > 40 && mouseX-15 < 440) {
      if(mouseY+10 > moBOT || mouseY-10 < moTOP) {
      gamestate = REPLAY;}
    }
  }
      break;
    case REPLAY:
    image(replay,0,0);
    if(mouseX <= 30 && mouseY <=30 && mouseX >=0 && mouseY >= 0) {
      if(mousePressed) {gamestate = GAMEPLAY;}
    }
    break;
    }

}
