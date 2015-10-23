int time;
float a = 0.0;

void setup()
{
  size(480,480);
  background(255);
  colorMode(HSB);
}

void draw(){
  for(float x=40; x<440; x=x+40){
  a += 0.2;
  rect(x,0,40,200+sin(a)*30.0); rect(x,280,40,480);
  fill(255,255,255);
  
  
  }

}
