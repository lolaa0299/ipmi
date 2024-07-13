PFont fuente;
int pantalla = 0; 
int ultimoTiempoTransicion; 
int intervaloTransicion = 6000; 
float posicionTexto; 
float velocidadTexto = 4.0; 

PImage img1, img2, img3, img4, img5, img6, img7; 

void setup() {
  size(640, 480); 
  fuente = loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  textFont(fuente);
  img1 = loadImage("imagen1.jpg");
  img2 = loadImage("imagen2.jpg");
  img3 = loadImage("imagen3.jpg");
  img4 = loadImage("imagen4.jpg");
  img5 = loadImage("imagen5.jpg");
  img6 = loadImage("imagen6.jpg");
  img7 = loadImage("imagen7.jpg");
  
  if (img1 == null || img2 == null || img3 == null || img4 == null || img5 == null || img6 == null || img7 == null) {
  }
  
  ultimoTiempoTransicion = millis(); 
  posicionTexto = -height / 2; 
}

void draw() {
  background(255); 
  
  if (millis() - ultimoTiempoTransicion > intervaloTransicion && pantalla < 6) {
    pantalla++;
    ultimoTiempoTransicion = millis();
    posicionTexto = -height / 2; 
  }

  switch (pantalla) {
    case 0:
      mostrarPantalla1();
      break;
    case 1:
      mostrarPantalla2();
      break;
    case 2:
      mostrarPantalla3();
      break;
    case 3:
      mostrarPantalla4();
      break;
    case 4:
      mostrarPantalla5();
      break;
    case 5:
      mostrarPantalla6();
      break;
    case 6:
      mostrarPantalla7();
      mostrarBotonReiniciar();
      break;
  }
}

void mostrarPantalla1() {
  image(img1, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Dark Souls 2 es una secuela del juego Dark Souls, \ndesarrollado por From Software,\nun RPG de acción conocido por\n su dificultad y método de ensayo y error.", width / 2, posicionTexto);

  if (posicionTexto < height / 2) {
    posicionTexto += velocidadTexto; 
  }
}

void mostrarPantalla2() {
  image(img2, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Dada su gran complejidad, el juego cuenta con \nguias para poder derrotar a los jefes y conceptos básicos\n para avanzar y no perder la paciencia.", width / 2, height - posicionTexto);
  if (height - posicionTexto > height / 2) {
    posicionTexto += velocidadTexto; 
  }
}

void mostrarPantalla3() {
  image(img3, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Para comenzar, el juego te da a elegir una de\n sus clases. Como recomendación, el caballero es el más \nvigoroso entre ellas, su atributo es su fuerza y su defensa.", posicionTexto, height / 2);
  if (posicionTexto < width / 2) {
    posicionTexto += velocidadTexto; 
  }
}

void mostrarPantalla4() {
  image(img4, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("La técnica para seguir vivo en Dark Souls \nes siempre bloquear los ataques del enemigo.\n Los jugadores más ágiles basan su juego\n en la técnica de esquivar.", width - posicionTexto, height / 2);
  if (width - posicionTexto > width / 2) {
    posicionTexto += velocidadTexto; 
  }
}

void mostrarPantalla5() {
  image(img5, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Los objetos son de gran ayuda. Las gemas\n de vida te permiten recuperar PS \nrápidamente. La esfigie de la humanidad \nayuda a invocar otros fantasmas para\n brindar ayuda. El ascua de la adversidad aumenta tu \nnivel y la fuerza de los enemigos de la zona.", width / 2, posicionTexto);
  if (posicionTexto < height / 2) {
    posicionTexto += velocidadTexto; 
  }
}

void mostrarPantalla6() {
  image(img6, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Una norma importante es tocar las hogueras,\n ya que estas actúan como punto de control \nen el juego. Al morir, el jugador regresa\n a la última hoguera en la que descansó.", width / 2, height - posicionTexto);
  if (height - posicionTexto > height / 2) {
    posicionTexto += velocidadTexto; 
  }
}

void mostrarPantalla7() {
  image(img7, 0, 0, width, height);
  fill(255, 255, 255); 
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Por último, el juego cuenta con 21 jefes principales\n y 11 opcionales. Cada uno tiene su propia guía \npara localizarlos y derrotarlos.", posicionTexto, height / 2);
  if (posicionTexto < width / 2) {
    posicionTexto += velocidadTexto; 
  }
}


void mostrarBotonReiniciar() {
  fill(255, 255, 255); 
  rect(width - 110, height - 50, 100, 40); 
  fill(0); 
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Reiniciar", width - 60, height - 30); 
}

void mousePressed() {

  if (mouseX >= width - 110 && mouseX <= width - 10 && mouseY >= height - 50 && mouseY <= height - 10) {
    pantalla = 0;
    ultimoTiempoTransicion = millis();
    posicionTexto = -height / 2;
  }
}
