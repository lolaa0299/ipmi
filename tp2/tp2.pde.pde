
PImage imagen1, imagen2, imagen3;
int miVariable, pantalla, suma, diametro, estado, tiempo, contador;
String texto1, texto2, texto3;
float posXCuad, posYCuad, tamXCuad, tamYCuad;



void setup() {
     size(640, 450); 
     
  imagen1 = loadImage("E.jpg"); 
 imagen2 = loadImage("imagen1.jpg");
 imagen3 = loadImage("imagen3.jpg");


     
textSize(39);
  println (frameCount);
    tamXCuad=0;
  tamYCuad=height;

  texto1 = "frameCount: ";
  texto2 = "frameRate: ";
  textSize(39);
  frameRate(15);
  pantalla = 0;
  tiempo = 0;
  suma = 5;
  diametro =50;

  

  
}


void draw() {

  
//pantalla 1
 
 if (pantalla == 0) {
   image (imagen1, 0, 0, width, height);
   fill (200);
   textSize(29);
   textAlign(CENTER);
   fill(200);
   text("primer texto", 100, 120, 400, 320);
  
 
 } else if (pantalla == 1) {
   image(imagen2, 0, 0, width, height);
   textSize(29);
   textAlign(CENTER);
   fill(0);
   text("segundo texto", 100, 120, 400, 320);


 }
