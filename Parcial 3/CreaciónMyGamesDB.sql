SHOW databases;
create database MyVideogamesDB;

USE MyVideogamesDB;

SHOW TABLES;

CREATE TABLE videojuegos (
  Videojuego_id INT NOT NULL,
  titulo VARCHAR(255) NOT NULL,
  formato INT NOT NULL,
  estado INT NOT NULL,
  franquicia VARCHAR(255),
  fecha INT NOT NULL,
  plataforma_actual INT NOT NULL,
  desarrolladora VARCHAR(255) NOT NULL,
  pais VARCHAR(255) NOT NULL,
  portada VARCHAR(255),
  trailer VARCHAR(255),
  PRIMARY KEY (Videojuego_id)
);

CREATE TABLE formato (
  Formato_id INT NOT NULL,
  tipo VARCHAR(255) NOT NULL,
  PRIMARY KEY (Formato_id)
);

CREATE TABLE estado (
  estado_id INT NOT NULL,
  tipo VARCHAR(255) NOT NULL,
  PRIMARY KEY (estado_id)
);

CREATE TABLE franquicias (
  franquicia_id INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  numero INT NOT NULL,
  numero_obtenido INT NOT NULL,
  año_de_estreno VARCHAR(255) NOT NULL,
  desarrollador VARCHAR(255) NOT NULL,
  PRIMARY KEY (franquicia_id)
);

INSERT INTO formato (Formato_id, tipo)
VALUES 
    (1, 'digital'),
    (2, 'fisico'),
    (3, 'ambos');

-- insertar datos en la tabla estado
INSERT INTO estado (estado_id, tipo)
VALUES 
    (1, 'completado'),
    (2, 'jugado'),
    (3, 'pendiente');


-- Crear la tabla de idiomas
CREATE TABLE idiomas (
  Idioma_id INT NOT NULL,
  idioma VARCHAR(255) NOT NULL,
  PRIMARY KEY (Idioma_id)
);

-- Crear la tabla de videojuego-idioma
CREATE TABLE videojuego_idioma (
  Videojuego_id INT NOT NULL,
  Idioma_id INT NOT NULL,
  FOREIGN KEY (Videojuego_id) REFERENCES videojuegos (Videojuego_id),
  FOREIGN KEY (Idioma_id) REFERENCES idiomas (Idioma_id)
);

CREATE TABLE plataforma_actual (
  pa_id INT NOT NULL,
  consola_id VARCHAR(255) NOT NULL,
  PRIMARY KEY (pa_id, consola_id)
);
