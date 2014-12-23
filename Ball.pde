class Ball{
float x;
float y;
float xSpeed;
float ySpeed;
float size;

void move(){
x+=xSpeed;
y+=ySpeed;
if(x-size/2<0){
x=0+size/2;
xSpeed*=-1;
}else if(x+size/2>width){
x=width-size/2;
xSpeed*=-1;
}
if(y-size/2<0){
y=0+size/2;
ySpeed*=-1;
}else if(y+size/2>bar.y-bar.thickness/2&&x>=bar.x-bar.barLeng/2&&x<=bar.x+bar.barLeng/2){
y=bar.y-bar.thickness/2-size/2;
ySpeed*=-1;
}
}

void display(){
fill(255);
this.x=bar.x;
ellipse(x,y,size,size);

}


Ball(){

size=12;
y=height-height/25-this.size;
xSpeed=random(-2,2);
println(xSpeed);
ySpeed=2;

}
}
