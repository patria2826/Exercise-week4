void setup(){
  size(480,480);
  colorMode(HSB);
}

float a = 0;

void draw(){
  background(255);
  a += 0.1;
  for(float x=40; x<440; x=x+40){
  fill(100,255,255);
  rect(x,0,40,200+sin(a+x/200+2.0)*50.0); rect(x,280,40,480);
  
  
  
  }

}
