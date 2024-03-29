class PVector {
 
  float x;
  float y;
 
  PVector(float x_, float y_) {
    x = x_;
    y = y_;
  }

  void sub(PVector v) {
    y = y - v.y;
    x = x - v.x;
  }
}

void setup() {
  size(640,360);
}
 
void draw() {
  background(255);
  PVector mouse  = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  mouse.sub(center);
  
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
}
