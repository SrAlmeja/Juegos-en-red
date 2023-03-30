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
* nombre

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

### **idiomas_X_juego (EP)**
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


## **Modelo relacional de la BD**
![alt text](/Parcial%202/MRBD.png)

## **Validación**

- ### Videojuegos
1. Crear el registro del juego.
2. Leer el registro del juego creado.
3. Leer todos los registros de la entidad de videojuegos.
4. Actializar el titutlo, formato, estado, plataforma actual e idioma del registro de la entidad de videojuegos
5. Eliminar un registro de la entidad de videojuegos.
6. Diversas formas de ordenar los registros de la entidad de videojuegos.

- ### Formato

1. Crear el registro del formato
2. El tipo de formato no se puede repetir
3. Leer todos los registros de la entidad paises.

- ### idioma
1. Crear el registro del idioma.
2. Leer el registro del idioma creado.
3. Leer todos los registros de la entidad de ideomas.
4. Actualizar el registro de la entidad de idiomas.
5. Eliminar uno o varios registros de la entidad de idiomas.

- ### idiomas_x_juego
1. Crear el registro del idioma.
2. Leer el registro del idioma creado.
3. Leer todos los registros de la entidad de ideomas.
4. Actualizar el registro de la entidad de idiomas.
5. Eliminar uno o varios registros de la entidad de idiomas.

- ### Estado
1. leer el registro del estado del juego en la entidad de estado. 
2. los registros son irrepetibles y solo serán 3

- ### Franquicias
1. Crear registro de la franquicia en la entidad franquicias.
2. Crear el registro de juego(s) dentro de la franquicia
3. crear el registro de juego(s) obtenido(s) de la franquicia.
4. Leer el registro de uno de los juegos de la registro de la franquicia
5. Leer el registro de los juegos de la registro de la franquicia
6. Actualizar los datos de uno de los juegos de la franquicia dada una condicion en particular
7. Eliminar los datos de un o unos juegos dentro de la franquicia dada una condición en particular 

- ### Desarrolladoras
1. Crear el registro del desarrollador
2. Leer el registro de una(s) desarrolladora(s)
3. Leer todos los registros de la entidad desarrolladoras.
4. Actualizar los datos de un país dada una condición en particular.
5. Eliminar los datos de una desarrolladora dada una condición en particular.

- ### Desarrolladoras_x_juego
1. Crear el registro del desarrollador
3. Leer todos los registros de la entidad desarrolladoras.
4. Actualizar los datos de un país dada una condición en particular.
5. Eliminar los datos de una desarrolladora dada una condición en particular.

- ### generos
1. Crear el registro del genero
2. Leer todos los registros de la entidad generos.
3. Actualizar los datos del dada una condición en particular.
4. Eliminar los datos del genero si nadie posee este registro

- ### generos_x_juego
1. Crear el registro del(os) genero(s)
2. Leer todos los registros de la entidad generos_x_juego.
3. Actualizar los datos del dada una condición en particular.
4. Eliminar los datos del genero_x_juego dada una condición en particular

- ### consolas
1. Crear el registro de la consola.
2. Leer el registro de la consola creado.
3. Leer todos los registros de la entidad de consolas.
4. Actualizar el registro de la entidad de consolas.
4. Eliminar los datos de la consola si nadie posee este registro

- ### plataforma_actual
1. Crear el registro de la consola es irrepetible.
2. Leer el registro de la consola creado.
3. Leer todos los registros de la entidad de consolas.
4. Actualizar el registro de la entidad de plataforma_actual.


- ### paises
1. Crear el registro de un país
2. Leer el registro de un(os) pais(es) dada una condición en particular.
3. Leer todos los registros de la entidad paises.
4. Actualizar los datos de un país dada una condición en particular.
5. Eliminar los datos de un páis dada una condición en particular.
