int mr = (int)(Math.random()*256);
int toby = (int)(Math.random()*256);
int chan = (int)(Math.random()*256);
public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  sierpinski(0,500,500);
}
public void mousePressed(){
  mr = (int)(Math.random()*256);
  toby = (int)(Math.random()*256);
  chan = (int)(Math.random()*256);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    noStroke();
    fill(mr,toby,chan);
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
