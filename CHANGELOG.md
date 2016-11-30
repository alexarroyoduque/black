# Project Black - changelog

0.0.7 - gameMaker

+ desvanecimiento del ladrillo resaltado tras tocar con bastón, evitando que sea permanente
+ Black siempre en el centro de la pantalla
  + Hacer los mapas de forma que quede espacio a izquierda, derecha, arriba y abajo. Así no hay riesgo de que Black se solape con la interfaz del juego.
+ pantalla tutorial sobre el manejo del bastón dinámica
+ Diálogo con una indicación de dónde está el destino
  + level02: texto + audio
  + level03: texto + audio
  + level04: texto + audio
  + level05: texto + audio
+ Rehacer niveles para que no sea un camino cerrado
  + level02
  + level03
  + level04
  + level05
+ doblaje de las transiciones de nivel(pendiente)
  + level01_intro - black
  + level01_end - green
  + level02_intro_1 - black
  + level02_intro_2 - black
  + level02_intro_3 - black
  + level02_intro_4 - black
  + level02_end - violet
  + level03_intro - black
  + level03_end - black
  + level04_intro_1 - orange
  + level04_intro_2 - black
  + level04_intro_3 - black
  + level04_end_1 - cyan
  + level04_end_2 - blue
  + level04_end_3 - black
  + level05_intro - black
+ doblaje del tutorial
  + movimiento
  + bastón


## 0.0.6 - gameMaker
+ Cuando Black recibe un impacto colorear en rojo el borde de la pantalla que indica la dirección en la que ha golpeado en lugar de toda la pantalla en rojo
  + diseño en cada dirección
  + programación
+ La vista de la ciudad lateral parece dar una sensación extraña en cuanto a la perspectiva en la que se mueve el jugador.
  + Hacer una vista desde arriba sería la mejor alternativa pero se puesto en su lugar un conjunto de casillas como si fueran las secciones de un mapa
+ Revisar hub del juego: No termina de quedar claro que cuando pierdes un corazón no es una vida en sí, sino que has perdido salud
  + Sprite de vida circular
  + Cambiado también el sprite del progreso hasta la bandera
+ Brújula: servirá como sistema de orientación
  + Dibujar una estática en el mapa
  + Dibujar otra que servirá para ubicar la dirección en la que se está moviendo Black
+ Otra pantalla de tutorial que muestre como se mueve Black por el mapa
+ Cuando el bastón de Black toque un obstáculo resaltarlo en el mapa
+ Más feedback durante la partida, por ejemplo con algún comentario del estilo: “La frutería se encuentra al norte de la ciudad”.
  + level01
+ Rehacer niveles para que no sea un camino cerrado
  + level01: fácil
+ Bug sala de records
  + cada vez que se entra duplica el último tiempo
  + si se hace un tiempo mejor al último que haya el juego de rompe


## 0.0.5 - gameMaker
+ ambio en el sprite de la barra de progreso
+ level-03
  + mapeado
  + background de lluvia


## 0.0.4 - gameMaker
+ Diseño de Black retrato
+ Diseño de Blue retrato
+ Diseño de Orange retrato
+ Diseño de Cyan retrato
+ Diseño de Red retrato
+ Cambio de Rose por Violet
  + Diseño
  + En el juego cambiar referencias de Rose por Violet
+ Mejorar imagen que “tapa” el juego → imagen círculos
+ Alargar bastón de Black
  + 64px de largo
  + 32px de ancho
+ Cambiar vibración cuando bastón detecta obstáculo a 0,3 o más
+ Previa del nivel 2: tutorial semáforos y coches
+ Cuando un nivel es completado sonará un sonido
+ level-02: Black tiene que llevar fruta a sus vecinos, donde vive su amiga Rose
  + Coches
    + Si un coche pilla a Black morirá
    + Los coches solo avanzan si el semáforo para ellos está en rojo
    + Sonido
  + Semáforos
      + Sonará cuando esté en verde para peatones
      + Sonará con más intensidad si Black está más cerca
  + Coches
+ Zona crítica cercana al semáforo
  + Hacer vibrar el motor izquierdo a 0,1
  + Al salir de la zona cancelar vibración
+ Pantalla de “gracias por jugar”
+ Juego a pantalla completa
+ Pantalla de instrucciones sobre cómo funciona el juego tras la intro con audio
+ Pausar partida
  + Posibilidad de abandonar el juego → Girando los dos joysticks hacia abajo
  + Mensaje básico para indicar cómo abandonar el juego si se desea
+ Al resetear un nivel por muerte, no resetear el tiempo
+ Cambio en la tipografía del timer
+ Sala de records
  + Transición desde menú principal
  + Transición desde pantalla “gracias por jugar”
  + Un record se guarda cuando se completan todos los niveles
  + Tiempo transcurrido total
  + Guardar como máximo 10 tiempos y que sean los mejores
  + Mostrar tiempo total, tiempo en cada nivel y fecha en la que se jugó
  + Debe ser acumulativo es decir, si en superar el nivel 01 se tardan 2 minutos y en superar el nivel 02 se tardan 3 minutos, el tiempo total serían 5 minutos. Ese tiempo debería almacenarse en alguna parte para mostrar una tabla de clasificación
    + Mostrar los tiempo ordenados
+ level-03: en versiones posteriores se pulirá
  + transiciones
    + Desde la casa de Violet, Black vuelve a la suya. Nivel similar al level-02 pero con lluvia
    + sonido de lluvia
+ level-04: en versiones posteriores se pulirá
  + (Nivel sin semáforo) Black tiene que hacer un nuevo recado. Pero en esta ocasión será guiado por su perro Red. El padre de Black (Señor Orange) le dice a Black que hay que comprar comida para los peces. Black tiene que ir a la tienda de animales del capitán Blue a comprar comida la comida. Una vez en la tienda le atenderá Cyan, la nieta de Blue. Cyan buscará a su abuelo y Blue le dará la comida para peces.
  + En este nivel no se verá barra de progreso y Black escuchará los ladridos de Red para llegar a su destino. Cuando más cerca está Black de su perro con más intensidad se escucharán los ladridos.
  + Transiciones
+ Mapeado
+ Mecánica de los ladridos del perro
  + interfaz/hub que sustituye la distancia hasta el destino
  + Cuanto más cerca está Black de Red, más suenan los ladridos
  + Cuando Black coge un perro se genera un muro tras él. Este muro es especial y si Black choca con él no le quita vida y suena un audio avisando de que los ladridos no suenan en esa dirección.
+ level-05: en versiones posteriores se pulirá
  + transiciones
  + Es el momento de volver a casa por última vez siguiendo los ladridos
    + Nivel similar al 04 pero con un semáforo

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
