Ball b;
Bar bar;
Brick brick;
int lifeCount;
int moving;
float clickedX;

void setup(){
size(800,600);
b=new Ball();
bar=new Bar(100);
brick=new Brick(72);
lifeCount=3;
}

void draw(){
background(0);
bar.display();
bar.move();
b.display();
brick.display();
printText("Life:");
for(int i=0;i<lifeCount;i++){
ellipse(80+25*i,height-25,20,20);
}
if(moving == 10 ){
b.move();

}
}

void printText(String something){
textSize(20);
fill(255,0,0);
text(something,25,height-20);
}

void mousePressed(){
if(mouseButton == RIGHT){
moving = 10;
clickedX=bar.x;
b.x=clickedX;
}
}

