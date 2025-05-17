PImage imge1, imge2, imge3, imge4;
int estado = 0;
color colorboton;
int frameInicio;
PFont f;

int tamTexto = 1;
int posX3 = 20;
int animacion2 = 10;
int animacion3 = -200;
int animacion4 = 0;

String texto1 = "Mario es un fontanero italiano creado por Nintendo en 1981.\n" +
"Apareció por primera vez en Donkey Kong y luego protagonizó\n" +
"su propio juego: Super Mario Bros (1985).\n" +
"Desde entonces, se convirtió en el ícono de los videojuegos.";

String texto2 = "La historia principal de los juegos de Mario se \n"+
"desarrolla en el Reino Champiñón,\n" +
"un lugar mágico lleno de criaturas, castillos\n"+
"y secretos.\n" +
"Mario vive allí junto a su hermano Luigi, la Princesa Peach\n" +
"y otros personajes.";

String texto3 = "En la mayoría de los juegos, Mario debe rescatar\n" +
"a la Princesa Peach del villano Bowser,\n" +
"el rey de los Koopas.\n" +
"Para lograrlo, recorre mundos llenos de obstáculos,\n" +
"enemigos y plataformas desafiantes.";

String texto4 = "Hoy, Mario es uno de los personajes más famosos del mundo.\n" +
"Ha influido en generaciones de jugadores\n" +
"y sigue siendo el alma de Nintendo.\n" +
"¡Incluso tiene su propia película y parques temáticos!";

void setup() {
size(640, 480);
textAlign(CENTER, CENTER);
colorMode(RGB);
f = createFont("serif", 40);
textFont(f);

imge1 = loadImage("mariobros1.jpg");
imge2 = loadImage("mariobros2.jpg");
imge3 = loadImage("mariobrosnuevo.jpg");
imge4 = loadImage("mariobros4.jpg");

colorboton = color(0, 150, 255);
frameInicio = frameCount;
}

void draw() {
background(255);

int tiempo = frameCount - frameInicio;

if (tiempo < 60 \* 5) {
estado = 0;
} else if (tiempo < 60 \* 10) {
estado = 1;
} else if (tiempo < 60 \* 15) {
estado = 2;
} else if (tiempo < 60 \* 20) {
estado = 3;
} else {
estado = 4;
}

if (estado == 0) {
image(imge1, 0, 0);

} else if (estado == 1) {
image(imge2, 0, 0);
if (tamTexto < 23) {
tamTexto++;
}
fill(255);
textAlign(LEFT, TOP);
textSize(tamTexto);
text(texto1, 20, 200);

} else if (estado == 2) {
image(imge3, 0, 0);

```
if (animacion2 < 90) {
  animacion2++;
}

fill(255);
textAlign(LEFT, TOP);
textSize(23);
text(texto2, 40, animacion2);
```

} else if (estado == 3) {
image(imge4, 0, 0);

```
if (animacion3 < 90) {
  animacion3 += 3;
}

fill(255);
textAlign(LEFT, TOP);
textSize(23);
text(texto3, 40, animacion3);
```

} else if (estado == 4) {
image(imge3, 0, 0);

```
if (posX3 < 50) {
  posX3 += 2;
}

fill(255);
textAlign(LEFT, TOP);
textSize(24);
text(texto4, posX3, 200);

// Botón
fill(colorboton);
rect(100, 400, 200, 50);
fill(255);
textAlign(CENTER, CENTER);
text("Reiniciar", 200, 425);
```

}
}

void mousePressed() {
if (estado == 4) {
if (mouseX > 100 && mouseX < 300 &&
mouseY > 400 && mouseY < 450) {


  frameInicio = frameCount;
  tamTexto = 1;
  posX3 = 20;
  animacion2 = 10;
  animacion3 = -200;
}


}
}  
