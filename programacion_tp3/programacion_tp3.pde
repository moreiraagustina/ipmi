//https://www.youtube.com/watch?v=OqSaHyhNau4&ab_channel=AgustinaMoreira

PImage imagen; 
int cant = 10;
int tam;

void pintarCuadrados(boolean par, boolean invertir, int posX, int posY, int tam) {

 if (par ^ invertir){
   fill(0);
 } else {
   fill(255);
 }
 
 rect(posX, posY, tam, tam);
}

void pintarCirculo(boolean par, boolean invertir, int posX, int posY, int tam) {
  
  if (par ^ invertir) {
    fill(255); 
  } else {
    fill(0); 
  }
  ellipseMode(CENTER);
  ellipse(posX + tam / 2, posY + tam / 2, tam * 0.5, tam * 0.5);
}

int calcularPosX (int tamañoImagen,int x, int tam){
  return tamañoImagen + x * tam;
}

int calcularPosY(int y, int tam) {
  return y * tam;
}


void setup() {
  size(800, 400);
  imagen = loadImage("programaciontp3.png");
  tam = (width - 400) / cant;  
}

void draw() {
  background(255);
  image(imagen, 0, 0);  

  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      int posX = calcularPosX(400, x, tam);  
      int posY = calcularPosY(y, tam);

      boolean par = (x + y) % 2 == 0;
      float invertirFactor = map(mouseX, 0, 800, 0, 1);
      boolean invertir = invertirFactor > 0.5 ;
  
      
      pintarCuadrados(par, invertir,posX, posY, tam);
      pintarCirculo(par, invertir, posX, posY, tam);

     
    }
  }
} 
