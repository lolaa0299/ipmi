// https://www.youtube.com/watch?v=NUe87XW_6f8

PImage img; 
boolean fondoNegro = false; 

void setup() {

  size(800, 400);
  background(255); 
  noStroke(); 

  img = loadImage("F_10.jpg"); 
}

void draw() {

  if (fondoNegro)
    background(0);
  else
    background(255); 

  image(img, 0, 0, width / 2, height);  
  
  int columnas = 30; 
  int filas = 15;
 
  float tamañoMax = width / columnas + 2;  

  for (int i = columnas / 2; i < columnas; i++) { 
    for (int j = 0; j < filas; j++) { 

      float distMouse = dist(i * tamañoMax, j * tamañoMax, mouseX, mouseY);

      float tamañoCirculo = calcularTamañoCirculo(distMouse, tamañoMax);
    
      if (fondoNegro)
        fill(255);
      else
        fill(0);
    
      dibujarCirculo(i * tamañoMax, j * tamañoMax, tamañoCirculo);
    }
  }
}

void mousePressed() {

  fondoNegro = !fondoNegro;
}

void dibujarCirculo(float x, float y, float tamaño) { 
  ellipse(x, y, tamaño, tamaño);
}


float calcularTamañoCirculo(float distMouse, float tamañoMax) {
  return map(distMouse, 0, dist(0, 0, width, height), 0, tamañoMax) * 5;
}
