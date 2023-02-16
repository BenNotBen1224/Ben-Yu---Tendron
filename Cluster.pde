public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
    }
}

public void setup(){
  size(500, 500);
}

public void mousePressed(){
  ellipse(250, 250, 100, 100);
  background(0);
  translate(0, 500);
  h = 0;
  Tendron(0, 0);
}

//7 splits
float h = 0;
public void Tendron(float x, float y){
  if(y < -500)
    return;
  else{
    h = h + 1;
    float x1 = x + (float)(Math.random()*30 + 30);
    float y1 = y - (float)(Math.pow((Math.random()*5 + 5), 2)) - h;
    
    noFill();
    beginShape();
    curveVertex(x, y);
    curveVertex(x, y);
    curveVertex(x1, y1);
    curveVertex(x1, y1);
    endShape();
    Tendron(x1, y1);
    Tendron(x1, y1);
    Tendron(x1, y1);
    Tendron(x1, y1);
    Tendron(x1, y1);
    Tendron(x1, y1);
    Tendron(x1, y1);
    Tendron(x1, y1);
  }
}
