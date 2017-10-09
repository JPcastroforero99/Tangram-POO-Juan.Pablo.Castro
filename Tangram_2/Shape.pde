abstract class Shape {
  protected float rot;
  protected float scl;
  protected PVector trans;
  protected color col;
  protected boolean above=false;
  protected PShape figura;
  protected color colorpieza;


  public Shape(float x, float y, float r, float s, color a, boolean b) {
    this.trans= new PVector(x, y);
    this.rot = r;
    this.scl = s;
    this.col = a;
    this.above=b;
  }

  public Shape() {
    this(random(100, width-100), random(100, height-100), 0, 1, 0, false);
  }

  public void draw() {

    pushStyle();
    pushMatrix();
    mouseDragged();
    translate(translation().x, translation().y);
    rotate(radians(rotation()));
    scale(scaling());
    fill(pintar());
    setAbove(k);

    drawShape();
    popMatrix();
    popStyle();
  }

  public boolean above() {
    return this.above;
  }

  public void setAbove(int c) {
    if (c==this.col) {
      above=true;
      colorpieza=c;          
    } else {
      above=false;
    }
   
  }


  protected abstract void drawShape();

  public PVector translation() {
    return this.trans;
  }

  public void setTranslation(float x, float y) {

    trans.x = x;
    trans.y = y;
  }

  public float rotation() {
    return this.rot;
  }

  public void setRotation(float r) {
    this.rot = r;
  }

  public float scaling() {
    return this.scl;
  }

  public void setScaling(float s) {
    this.scl = s;
  }

  public color pintar() {
    return this.col;
  }

  public void setPintar(color a) {
    this.col = a;
  }
  public void mouseDragged() {
    if (above==true) {
      if (mouseButton==LEFT) {
        this.trans.x = mouseX;
        this.trans.y = mouseY;
      }
    }
  }
}