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
