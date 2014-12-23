class Brick{
float x;
float y;
float size;
int brickCount;
float xSpacing;
float ySpacing;


void display(){
rectMode(CENTER);
for(int i=0;i<brickCount;i++){
int col=i/12;
int row=i%12;
rect(x+xSpacing*int(row),y+ySpacing*int(col),size,size);
}
}


Brick(int brickCount){
xSpacing=50;
ySpacing=50;
this.brickCount=brickCount;
this.x=width/2-6*xSpacing;
this.y=height/7;
size=40;
}
}
