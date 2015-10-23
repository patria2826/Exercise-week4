void setup(){
  
size(480,480);
colorMode(HSB);

}

void draw(){
 for(float x=0; x<width; x=x+48){
   
   float B = 255-abs(mouseX-x);
   fill(255,255,B);
   noStroke();
   rect(x,0,48,height);
 } 
  
  
}
