# TETRIS-
Aqui les dejo la documentacion y la secuencia del algoritmo. Fue para pic18f4550 con GLCD 

Al iniciar el programa se declaran todas las variables a utilizar, se configura la Glcd en los puertos D, C y E, luego dentro del main() se inicializan los puertos respectivos como entradas o salidas, se activan las debidas interrupciones, se inicializa el módulo bluetooth, se grafica el título del juego y se procede a mostrar el menú del juego con ayuda de un while(bien==1).
En la parte del sonido, se colocó como salida analógica al puerto RA2 inicializando en el TRISA. La melodía que se programó es Yellow house. 
El menú consiste en 3 opciones mediante las cuales el usuario tiene la libertad de iterar entre ellas, cada opción tiene relacionado por una interrupción en RB7 que varía entre 0 y 1, según se aplaste la botonera que entra en el juego. 
Al ingresar en el juego con la variable indicadora entre bien==1 (será cierto hasta que finalice el juego) las piezas caerán consecutivamente una tras otra. Ahora para evitar generar números aleatorios para las piezas, ya que no hay forma de usar srand(time(NULL)) en MikroC, se decidió utilizar un switch- case para que la variable “contador” para piezas intercalara en ese menú. Las piezas caerán de forma indefinidas hasta que complete el tamaño de la matriz del GLCD. Las variables “x” e “y” ya están ajustadas con las posiciones del final de la pieza dada, es decir, cuadrado en x=117 es el asentamiento para aquella pieza.   
Para la parte de girar pieza, se hace una traslación de x y y, es decir un cambio entre las coordenadas x e y. 
Uno pierde el juego cuando se llena el contador general, que representa la cantidad de piezas que puede llenar la matriz GLCD.
