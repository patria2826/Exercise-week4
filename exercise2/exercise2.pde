void setup(){
  size(480,480);
  colorMode(HSB);
}

float a = 0;

void draw(){
  background(255);
  a += 0.08;
  for(float x=40; x<440; x=x+40){
  float mo = sin(a+x/200+2.0)*60.0;
  fill(100,200,105);
  rect(x,0,40,180+mo); rect(x,300+mo,40,480);
  
  
  
  }

}
