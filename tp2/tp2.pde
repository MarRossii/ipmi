//TP2
//Maria del Mar Rossi
//legajo:124988/2
//comisión 3
//tematica bandas musicales: Miranda



float Imagen1=0;
float Imagen2=0;
float Imagen3=0;
float Imagen4=0;
float Imagen5=0;
float transparencia;
float velocidad= 1;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
int estado=0 ;
int contador=0;
PFont font;
/*int deslizamientoDerecha;
 int deslizamientoIzquierda;
 int estado;
 */
void setup () {
  size(640, 480);
  textSize(30);
  imagen1 = loadImage("imagen1.jpeg");
  imagen2 = loadImage("imagen2.jpeg");
  imagen3 = loadImage("imagen3.jpeg");
  imagen4 = loadImage("imagen4.jpeg");
  imagen5 = loadImage("imagen5.jpeg");
  font=loadFont("BellMT-30.vlw");
  textFont(font, 30);

  inicializar();
}
void draw() {
  if ( estado==0 ) {
    Inicio();
  } else if ( estado==1 ) {
    imagen2();
  } else if ( estado==2 ) {
    imagen3();
    /*  if ( contador>=60*3 ) {
     estado = 0;
     contador=0;
     }*/
  } else if ( estado==3 ) {
    imagen4();
  } else if ( estado==4 ) {
    imagen5();
  } else {
  }
}

void mousePressed() {

  //iniciar
  if (estado==0 &&mouseSobreRectangulo(320, 400, 140, 40)) {
    estado=1;
    contador=0;
  }
  //reiniciar
  if (estado == 4 && mouseSobreRectangulo(320, 400, 160, 40)) {
    Imagen2 = 0;
    Imagen3 = 0;
    Imagen4 = 0;
    Imagen5 = 0;
    contador = 0;
    estado = 0;
  }
}
