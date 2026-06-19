//TP3
//Maria del Mar Rossi
//legajo:124988/2
//comisión 3
//imagen:08
//https://youtu.be/6mXD4uNn3GY

PImage miImage;
color colorinicial= color(0);

void setup() {
  size(800, 400);
  miImage=loadImage("08.jpg");
}

void draw() {
  background(255);

  image(miImage, 0, 0, 400, 400);

  push();
  translate(600, 200);

  //hecho for
  //for anidado dentro de adentro de la funcion cuadrado
  /* cuadrado(7,12);
   rotate(radians(90));
   cuadrado(7,12);
   rotate(radians(90));
   cuadrado(7,12);
   rotate(radians(90));
   cuadrado(7,12);
   rotate(radians(90));
   */
  for (int i = 0; i < 4; i++) {
    cuadrado(7, 12);
    rotate(radians(90));
  }
  pop();
 /*
   Cuadrado1();
   Cuadrado2();
   Cuadrado3();
   Cuadrado4();
   */
  /* push();
   fill(0);
   textSize(30);
   text((400+ mouseX)+ "-"+ mouseY, mouseX, mouseY);
   pop();*/
}


void keyPressed() {
  if (key == ' ') {
    colorinicial= armaColor();
  }
  if (key == 'm') {
    colorinicial=color(0);
  }
}

color armaColor() {
  return color(random(255), random(255), random(255));
}
