class Ball{
float x;
float y;
float xSpeed;
float ySpeed;
float size;
float size2 =12;
int speed =5;

void move(){
fill(255);
size = 0;
ellipse(clickedX,y,size2,size2);
clickedX+=xSpeed;
y+=ySpeed;
if(clickedX-size2/2<0){
clickedX=0+size2/2;
xSpeed*=-1;
}else if(clickedX+size2/2>width){
clickedX=width-size2/2;
xSpeed*=-1;
}
if(y-size2/2<0){
y=0+size2/2;
ySpeed*=-1;
}else if(y+size2/2>bar.y-bar.thickness/2&&clickedX>=bar.x-bar.barLeng/2&&clickedX<=bar.x+bar.barLeng/2){
y=bar.y-bar.thickness/2-size2/2;
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
xSpeed=random(-3,3);
ySpeed=sqrt(sq(speed)-sq(xSpeed));
}
}
