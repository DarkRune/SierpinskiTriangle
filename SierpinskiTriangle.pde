public void setup()
{
  size(500, 500);
  background(0);
  rotate(PI/2);
  sierpinski(0, 0, 500);
}
public void draw()
{
}
public void sierpinski(int x, float y, int len) 
{
  if (len > 5) 
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  } else 
  {
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
}
