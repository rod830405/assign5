class Bar{
float x;
float y;
float thickness;
float barLeng;

void move(){
x=mouseX;
}

void display(){
fill(255);
  rectMode(CENTER);
rect(x,y,barLeng,thickness);
}


Bar(float barLeng){
y=height-height/25;
thickness=10;
this.barLeng=barLeng;
}
}
