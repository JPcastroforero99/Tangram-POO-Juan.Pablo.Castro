Shape[] shapes;


int k;
boolean above1;
float R1=0, R2=0, R3=0, R4=0, R5=0 ,R6=0, R7=0;

void setup() {
  size(500, 500);
  background(0, 0, 0);
  shapes = new Shape[7];
  shapes[0] = new Rect();
  shapes[1] = new Triangle(-65536, 1);
  shapes[2] = new Triangle(-16711936, 1);
  shapes[3] = new Triangle(-16776961, 0.5);
  shapes[4] = new Triangle(-27136, 0.5);
  shapes[5] = new Triangle(-16711681, 0.7);
  shapes[6] = new Quad();
}
void draw() {
  background (0);
  for (int i=0; i<shapes.length; i++)
    shapes[i].draw();
  k=get(mouseX, mouseY);
  
}
void mousePressed() {
  if (mouseButton==RIGHT) {
    if (k==-256) {
      R1+=45;
    } else {
      if (k==-65536) {
        R2+=45;
      } else {
        if (k==-16711936) {
          R3+=45;
        } else {
          if (k==-16776961) {
            R4+=45;
          } else {
            if (k==-27136) {
              R5+=45;
            } else {
              if (k==-16711681) {
                R6+=45;
              } else {
                if (k==-65281) {
                  R7+=45;
                }
              }
            }
          }
        }
      }
    }
  }
}