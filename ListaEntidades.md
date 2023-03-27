# **Mis VideoJuegos** 

## **Listado de Entidades**

### **Videojuegos (ED)**
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

### **Formato (EP)**
* Formato_id (PK)
* tipo

### **Estado (EP)**
* estado_id (PK)
* tipo

### **Franquicias (EP)**
* franquicia_id (PK)
* nombre
* juego_id (FK)
* numero
* número_obtenido
* año_deestreno (FK)
* desarrollador (FK)

### **Desarrolladoras (EC)**
* Desarrolladora_id (PK)
* nombre

### **Desarrolladora_x_juego (EP)**
* dxj_id (PK)
* desarrolladora_id (FK)
* juego_id (FK)

### **Generos (EC)**
* genero_id(PK)
* nombre

### **Generos_X_Juego (EP)**
* gxj_id (PK)
* juego_id (FK)
* genero_id (FK)

### **Consolas (EC)**
* consola_id (PK)
* nombre


### **plataforma_actual (EP)**
* pa_id(PK)
* consla_id (FK)
* videojuego_id (FK)

### **idiomas (EC)**
* idioma_id (PK)
* nombre

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