class Triangle extends Shape {
  
  public Triangle(int a, float b){
   this.col=a;
   this.scl=b;
   
  }

  protected void drawShape() {
    triangle(-50, -100, 50, 0, -50, 100);
    if(above){
     if(colorpieza==-65536){
       this.rot=R2;  
       } else if (colorpieza==-16711936){
       this.rot=R3;  
       } else if(colorpieza==-16776961){
       this.rot=R4;  
       } else if(colorpieza==-27136){
       this.rot=R5;  
       } else if(colorpieza==-16711681){
       this.rot=R6;  
       } 
       
       
       }
    }
  }

  

  