PImage imagenuno;
void setup(){
  size(800, 400);
  imagenuno = loadImage("paisaje4.jpg");
  image(imagenuno,0,0,400, 500);
}
void draw(){
  size(800,400);
  fill(#8B91A2);
  
 stroke(#5E4776);
  rect(400, 200, 800, 600);
  fill(#5E4776);
  rect(400, 0, 800, 90);
  
  stroke(#FFE37E);
  fill(#FFE37E);
  rect(400, 90, 800, 80);
  
  stroke(#FFAE58);
  fill(#FFAE58);
  rect(400, 120, 800, 130);
  
  stroke(#5E4776);
    fill(#5E4776);
  rect(400, 280, 800, 20);
  
  stroke(#FF725D);
  fill(#FF725D);
  rect(400, 250, 800, 30);
  
   stroke(#323B55);
     fill(#5F667C);
  triangle(560, 250, 570, 140, 650, 260);
  fill(#424755);
 triangle(570, 90, 570, 260 ,500, 265);
 fill(#2D3240);
  rect(520,270, 100, 30);
  line(570, 270, 570, 130);
   println("X:");
  println(mouseX);
  println(mouseY);
  
   
  
}
