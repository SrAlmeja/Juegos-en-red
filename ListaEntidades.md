# **Mis VideoJuegos** 

## **Listado de Entidades**

### **videojuegos (ED)**
* Videojuego_id (PK)
* titulo
* formato (FK)
* estado (FK)
* franquicia (FK)
* fecha
* plataforma_actual (FK)
* desarrolladora (FK)
* idioma (FK)
* pais (FK)
* portada
* trailer

### **formato (EP)**
* Formato_id (PK)
* tipo

### **estado (EP)**
* estado_id (PK)
* tipo

### **franquicias (EP)**
* franquicia_id (PK)
* nombre
* juego_id (FK)
* numero
* número_obtenido
* año_de_estreno
* desarrollador (FK)

### **desarrolladoras (EC)**
* Desarrolladora_id (PK)
* nombre

### **desarrolladora_x_juego (EP)**
* dxj_id (PK)
* desarrolladora_id (FK)
* juego_id (FK)

### **generos (EC)**
* genero_id(PK)
* tipo

### **generos_X_Juego (EP)**
* gxj_id (PK)
* juego_id (FK)
* genero_id (FK)

### **consolas (EC)**
* consola_id (PK)
* nombre


### **plataforma_actual (EP)**
* pa_id(PK)
* consla_id (FK)
* videojuego_id (FK)

### **idiomas (EC)**
* idioma_id (PK)
* nombre

### **ideomas_X_juego (EP)**
* ixj_id (PK)
* juego_id (FK)
* idioma_id (FK)

### **paises (EC)**
* pais_id (PK)
* nombre


## **Relaciones**
1. Un Juego tiene esta en un formato (1 - M)
2. juegos pretenecen a un estado (M-M)
2. Un Juego tiene un pais de origen (1-M)
6. Juegos pertenecen a Franquicias (M-M)
8. Un juego tiene una desarrolladora (1-M)
9. Juegos pertenecen a Géneros (M-M)
10. Juegos tiene consola (1-M)
11. Juegos pertenecen a plataforma:actual  (M-M)
11. Un juego tiene un idioma (1-M)
12  Un Juego tiene país (M-M)

![alt text](/Parcial%202/MRBD.png)


### Nota
hola profesor, lamento la tardanza de esta parte, siendo honesto eh estuve muy cansado toda la semana pasada y la clase que empezamos a ver todo estuve muertisimo y no entendi nada y cuando hice mi lista, en realidad lo que estaba haciendo era una tabla con los elementos que pensaba usar, por eso no lo termine para el jueves, aqui le coloco una foto del trabajo que pensaba entregar el jueves pero que tampoco llegue a terminar:


![alt text](/Parcial%202/prueba.jpg)

En verdad lamento mi error, le pido una disculpa, prometo esforzarme mas para ponerme al corriente.