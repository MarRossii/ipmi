void cuadrado( float x_, float y_) {

  float x = x_;
  float y = y_;
  float tamaño = 180;

  for (int i = 0; i < 10; i++) {

    fill(i % 2 == 0 ? colorinicial : 255);
    rect(x, y, tamaño, tamaño);

    x += 6.5;
    y += (i % 2 == 0) ? 13 : 12;
    tamaño -= (i % 2 == 0) ? 19 : 18;
  }
}

/*void Cuadrado1() {

  float x = 413;
  float y = 6;
  float tamaño = 180;

  for (int i = 0; i < 10; i++) {

    fill(i % 2 == 0 ? colorinicial : 255);
    rect(x, y, tamaño, tamaño);

    x += (i % 2 == 0) ? 11 : 14;
    y += (i % 2 == 0) ? 4 : 8;
    tamaño -= (i % 2 == 0) ? 16 : 22;
  }
}
void Cuadrado2() {

  float x = 610;
  float y = 10;
  float tamaño = 180;
  ;

  for (int i = 0; i < 10; i++) {

    fill(i % 2 == 0 ? colorinicial : 255);
    rect(x, y, tamaño, tamaño);

    x += 13;
    y += 13;
    tamaño -= 18.5;
  }
}
void Cuadrado3() {

  float x = 406;
  float y = 203;
  float tamaño = 180;

  for (int i = 0; i < 10; i++) {

    fill(i % 2 == 0 ? colorinicial : 255);
    rect(x, y, tamaño, tamaño);

    x += 6;
    y += (i % 2 == 0) ? 5 : 8;
    tamaño -= (i % 2 == 0) ? 19 : 18;
  }
}
void Cuadrado4() {

  float x = 606;
  float y = 208;
  float tamaño = 180;

  for (int i = 0; i < 10; i++) {

    fill(i % 2 == 0 ? colorinicial : 255);
    rect(x, y, tamaño, tamaño);

    x += 6.5;
    y += (i % 2 == 0) ? 13 : 12;
    tamaño -= (i % 2 == 0) ? 19 : 18;
  }
}*/
