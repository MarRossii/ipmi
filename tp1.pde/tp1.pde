PImage miImage;


void setup() {

  size(800, 400);
  miImage = loadImage ("data/mural2.jpeg");
  fill(#363AD6);
  rect(400, 0, 400, 400);
}


void draw() {
  background(#3033BF);
  image(miImage, 0, 0, 400, 400);

  push();
  fill(#A01B1B);
  strokeWeight(6);
  stroke(#050000);
  strokeCap(SQUARE);
  //1
  beginShape();
  vertex(541, 44);
  vertex(524, 105);
  vertex(585, 186);
  vertex(583, 102);
  endShape(CLOSE);

  //2
  beginShape();
  vertex(632, 42);
  vertex(583, 100);
  vertex(585, 186);
  vertex(658, 110);
  endShape(CLOSE);

  //3
  beginShape();
  vertex(658, 110);
  vertex(585, 186);
  vertex(691, 176);
  vertex(718, 114);
  endShape(CLOSE);

  //4
  beginShape();
  vertex(690, 178);
  vertex(585, 186);
  vertex(666, 257);
  vertex(718, 233);
  endShape(CLOSE);

  //5
  beginShape();
  vertex(663, 259);
  vertex(585, 186);
  vertex(590, 291);
  vertex(640, 331);
  endShape(CLOSE);

  //6
  beginShape();
  vertex(591, 292);
  vertex(585, 186);
  vertex(522, 269);
  vertex(542, 330);
  endShape(CLOSE);

  //7
  beginShape();
  vertex(518, 265);
  vertex(585, 186);
  vertex(488, 193);
  vertex(455, 244);
  endShape(CLOSE);

  //8
  beginShape();
  vertex(490, 187);
  vertex(585, 186);
  vertex(521, 111);
  vertex(460, 126);
  endShape(CLOSE);

  pop();


  //circulo
  push();
  fill(#B9B9B9);
  strokeWeight(10);
  stroke(#B9B9B9);
  ellipse(596, 186, 22, 25);
  pop();

  push();
  fill(#050000);
  stroke(#050000);
  push();
  strokeWeight(4);
  line(589, 193, 589, 178);
  line(589, 177, 595, 186);
  line(596, 188, 602, 177);
  line(602, 177, 604, 193);
  pop();
  push();
  strokeWeight(7);
  line(583, 97, 634, 35);
  line(634, 35, 659, 104);
  line(659, 104, 718, 109);
  line(718, 109, 695, 175);
  line(695, 175, 720, 235);
  line(720, 235, 666, 260);
  line(666, 260, 640, 330);
  line(640, 330, 590, 293);
  line(590, 293, 541, 333);
  line(541, 333, 519, 266);
  line(519, 266, 453, 245);
  line(453, 245, 486, 188);
  line(486, 188, 457, 124);
  line(457, 124, 521, 104);
  line(521, 104, 540, 39);
  line(540, 39, 582, 95);
  pop();
  pop();


  push();
  fill(#D1D1D1);
  stroke(#D1D1D1);
  vertex(431, 140, 437, 362);
  vertex(437, 362, 400, 360);
  vertex(400, 360, 400, 140);
  vertex(400, 140, 431, 140);
  pop();
/*
  // guia
  push();
  fill(#FCFCFC);
  textSize(30);
  text((400+ mouseX)+ "-"+ mouseY, mouseX, mouseY);
  pop();
  */
}
