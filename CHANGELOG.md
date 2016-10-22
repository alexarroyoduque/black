# Project Black - changelog

## 0.0.3 - gameMaker

+ Cambiar resolución del proyecto a 1280x720
+ Pulir el tema de las colisiones
+ Distancia hasta el objetivo con barra de progreso
  + Sprite
  + Programación
+ Colisionar con un muro/obstáculo baja vida a Black
  + Cada toque con un muro baja un punto de vida
  + Cada toque cambia el sprite de vida
  + 2 segundos de invulnerabilidad tras chocar
  + Perder toda la vida resetea el nivel
  + Sonido al chocar con muro
  + Efecto visual
+ level-01: La primera tarea del día consiste en cumplir un recado de la madre de Black. Black tiene que ir a la frutería del señor Green por una calle peatonal.
  + Mapeado
    + Si el bastón choca con una pared el mando vibra
  + Sonidos
    + ambiente de la calle
  + Obstáculos
    + El bastón al chocar con ellos hace que el mando vibre
  + Meta
    + Cuando Black llega se supera el nivel
+ Diseño del señor green para el cierre del nivel 01
+ Diseño de Rose para el cierre del nivel 02

## 0.0.2 - gameMaker

+ Crear estructura del proyecto sustituyendo al proyecto phaser
+ Crear un tilemap básico: recordemos que la “vista” (sea lo que sea lo que se vea) es desde arriba.
+ Definir resolución con la que trabajar: 1024*576
+ Portada del juego
+ Jugador - cuadrado
  + Movimiento
    + gamepad - joystick izquierdo
  + Colisiones con las paredes
  + Joystick derecho movimiento del palo de ciego
  + Vibración cuando el palo detecte pared

+ Definir estados en esqueleto y transiciones entre ellos
  + Intro: con portada del juego
  + Menú
    + Jugar
      + Tutorial
    + Salir
+ Niveles
  + level-01-intro
    + Diseño de la madre de Black
  + level-01
+ Interfaz durante la partida
  + Tiempo transcurrido

## 0.0.1 - phaser 2.6.2 - Alex
+ Crear estructura del proyecto
  + Similar a la usada el shootem totem
+ Crear un tilemap básico
  + Definir estados en esqueleto (sin contenido) y
  transiciones entre ellos
    + Transiciones
      + Intro
      + Game over
    + Menú
      + Jugar
      + Créditos
    + Pantallas
      + level-01
      + level-02
      + …

## 0.0.0 - phaser 2.6.2
+ Crear proyecto en github
+ Generar proyecto con el generador de phaser
  + Se ha usado el proyecto en es5
+ Subir proyecto a github
