void inicializar() {
  estado=0;
  contador=0;
  Imagen1=0;
  //resetFade();
}

boolean mouseSobreRectangulo( float x_, float y_, float ancho_, float alto_) {
  if (mouseX>x_-ancho_/2 && mouseX<x_+ancho_/2 &&
    mouseY>y_-alto_/2 && mouseY<y_+alto_/2 ) {
    return true;
  } else {
    return false;
  }
}





void Inicio() {
  image(imagen1, Imagen1, 0, 640, 480);
  //boton
  rectMode(CENTER);
  rect(320, 400, 140, 40);
  fill(255, 255, 255);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Comenzar", 320, 397);
  fill(#FFB4BE);
}



void imagen2() {

  contador++;
  //se queda todo quieto por unos segundos
  if (contador < 60*4) {
    image(imagen2, 0, 0, 640, 480);

    fill(0);
    textAlign(CENTER);
    text("Miranda! es una banda Argentina de estilo pop\n y teatral formada en 2001.", width/2, 400);

    return;
  }
  //arranca normal
  velocidad = 2;

  if (Imagen3 > -640) {
    Imagen3 -= velocidad;
    Imagen2 -= velocidad;
  } else {
    estado = 2;
    contador = 0;
  }
  image(imagen2, Imagen2, 0, 640, 480);
  image(imagen3, Imagen3 + 640, 0, 640, 480);
  //se mueve el texto con la imagen
  fill(0);
  textAlign(CENTER);
  text("Miranda! es una banda argentina de estilo pop\n y teatral formada en 2001.",
    width/2 + Imagen2, 400);
}

void imagen3() {
  contador++;
  float duracion=60*2;

  if (contador>=duracion) {
    estado= 3;
    contador=0;
    //corta con imagen3 para siempre
    return;
  }
  //transparencia
  float alpha= map(contador, 0, duracion*4, 0, 255);
  //imagen que se va
  tint(255, 255-alpha);
  image(imagen3, 0, 0, width, height);
  //imagen nueva
  tint(255, alpha);
  image(imagen4, 0, 0, width, height);
  noTint();


  //texto
  /* float alphaTexto = map(contador, 0, duracion/3, 0, 255);
   fill(#4E879D);
   textAlign(CENTER);
   text("esta formado por Juliana Gattas y Alejandro Sergi", width/2, 400);
   */
  float xTexto = map(contador, 0, duracion, width + 200, width/2);

  fill(255); // sin fade para que se vea bien
  textAlign(CENTER);
  text("esta formado por Juliana Gattas y Alejandro Sergi", xTexto, 400);
  //rect(400,400,X-250,400);
}



void imagen4() {
  image(imagen4, 0, 0, width, height);

  contador++;

  float alpha= map(contador*3, 0, 30, 0, 255);
  //texto
  fill(255, alpha);
  textAlign(CENTER);
  text("hicieron una colaboración con Lali logrando \n"+
    "un canción pegadiza y con mucha energia ", width/2, 350);

  if (contador > 60*5) {
    estado = 4;
    contador = 0;
  }
}



void imagen5() {
  contador++;

  float y;
  if (contador<= 60*2) {
    y= map(contador, 0, 60*2, height, 0);
  } else {
    y=0;
  }

  image(imagen4, 0, 0, width, height);
  image(imagen5, 0, y, width, height);


  // boton
  if (contador>60*2) {
    rectMode(CENTER);
    rect(320, 400, 140, 40);
    fill(255, 255, 255);
    noStroke();
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Reiniciar", 320, 397);
    fill(#2E36B7);
  }
}
