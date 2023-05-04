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

-- Insertar los datos en la tabla de videojuegos
INSERT INTO videojuegos VALUES
(1, 'LEGO STAR WARS THE COMPLETE SAGA', 3, 1, 'Lego', 2007, 5, 'Lucas arts', 'Estados Unidos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ign.com%2Fgames%2Flego-star-wars-the-complete-saga&psig=AOvVaw2HjJOg6g9gtDL8eL0CHF6X&ust=1681253818792000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCOjO7Ne0oP4CFQAAAAAdAAAAABAD', 'https://www.youtube.com/watch?v=NkabLvecF-E'),
(2, 'NEW SUPER MARIO BROS', 1, 1, 'Mario Bros', 2006, 5, 'Nintendo', 'Japon', 'https://m.media-amazon.com/images/I/51BW6MGMY3L._AC_.jpg', 'https://www.youtube.com/watch?v=Zy41U69D6Lc'),
(3, 'LEGO INDIANA JONES THE ORIGINAL ADVENTURES', 3, 1, 'Lego', 2008, 5, 'Lucas arts', 'Estados Unidos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Flegogames.fandom.com%2Fwiki%2FLEGO_Indiana_Jones%3A_The_Original_Adventures&psig=AOvVaw3oYQhIKr5LRpGS3hG7QGLJ&ust=1681460166003000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKDomvGnpv4CFQAAAAAdAAAAABAK', 'https://www.youtube.com/watch?v=Qix-A8GNPfA'),
(4, 'James Cameron´s AVATAR THE GAME', 1, 1, 'Avatar', 2009, 5, 'ubisoft', 'ingles', 'Canada', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2F-%2Fes%2FJames-Camerons-Avatar-Game-Nintendo-DS%2Fdp%2FB002HHM11A&psig=AOvVaw1nZqK4n_RiNP_zygPpEhdn&ust=1681460308835000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMD8orWopv4CFQAAAAAdAAAAABAJ', 'NA'),
("5", "MY ENGLISH COACH Para Hispanoparlantes", "1", "2", "", "2009", "5", "Ubisoft", "Ingles/latino", "Estados Unidos", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com.mx%2FMy-English-Coach-Spanish-Edition-Nla%2Fdp%2FB001KL3GVS&psig=AOvVaw3sD63yoNPlNZMAjGBSgWcN&ust=1681460460066000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIDKwP2opv4CFQAAAAAdAAAAABAE", "https://www.youtube.com/watch?v=8LPVDfXQ_9g"),
("6", "SONIC GENERATIONS", "1", "1", "Sonic", "2011", "6", "SEGA", "Ingles", "japon", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hobbyconsolas.com%2Fvideojuegos%2Fsonic-generations&psig=AOvVaw1aRqoVy0yIZTk7b2l9Ei6M&ust=1681460602755000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKDPzcGppv4CFQAAAAAdAAAAABAE", "https://www.youtube.com/watch?v=gb9RQwlNRy8"),
("7", "LEGO INDIANA JONES 2 THE ADVENTURE CONTINUES", "1", "1", "Lego", "2009", "5", "Lucas arts", "Ingles", "Estados Unidos", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eneba.com%2Flatam%2Fsteam-lego-indiana-jones-2-the-adventure-continues-steam-key-global&psig=AOvVaw2KQfBlscb9PGRBBgJL_pk3&ust=1681485225445000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCLDW1p6Fp_4CFQAAAAAdAAAAABAE", "https://www.youtube.com/watch?v=RoX4LnZaZD8"),
("8", "TRANSFORMERS DARK OF THE MOON STEALTH FORCE EDITION", "1", "2", "Transformers", "2011", "6", "ACTIVISION", "Ingles", "Estados Unidos", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2F-%2Fes%2FTransformers-Dark-Moon-Nintendo-Stealth-Force%2Fdp%2FB004N7F9SY&psig=AOvVaw2qwr7DIQSq_14wCZ5DMRw8&ust=1681485530686000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCODGl7CGp_4CFQAAAAAdAAAAABAE","https://www.youtube.com/watch?v=dokwnQ7hOxs"),
('9', 'PLANTS VS ZOMBIES', '3', '1', 'Plants Vs. Zombies', '2009', '5', 'CapCom', 'Ingles', 'Canada', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com.mx%2FPlants-Vs-Zombies-Game-Nintendo%2Fdp%2FB00407F2BQ&psig=AOvVaw2DxyOzi-jtOp7HHo_gYmpc&ust=1681485589248000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJCymMyGp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=x0dIYeFlHkc'),
('10', 'SONIC RUSH ADVENTURE', '1', '1', 'sonic', '2007', '5', 'SEGA', 'Ingles', 'Japon', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2F-%2Fes%2FSonic-Rush-Adventure-Nintendo-DS%2Fdp%2FB000RE50FO&psig=AOvVaw1paozI-C1Sk0SnmOX-aOBg&ust=1681487145829000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKi2rLKMp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=J4pG23S8kbA'),
('11', 'FANTASTIC FOUR RISE OF THE SILVER SURFER', '1', '1', 'Fantastic Four', '2007', '5', '2K', 'Ingles', 'Estados Unidos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2F-%2Fes%2FFantastic-Four-Rise-Silver-Surfer%2Fdp%2FB000MK6X5O&psig=AOvVaw1NXcJIy8H881KFwxroKC5u&ust=1681487279229000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCODSkfKMp_4CFQAAAAAdAAAAABAE', 'NA'),
('12', 'BRAIN AGE Train your Brain in Minutes a Day', '1', '2', '', '2005', '5', 'TOUCH GENERATIONS', 'Ingles', 'Japon', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FBrain_Age%3A_Train_Your_Brain_in_Minutes_a_Day!&psig=AOvVaw15pQMKD0O0aHBl4DFJGLez&ust=1681487409781000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKCbpbCNp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=FbJMTtCV0Ds'),
('13', 'MARIO KARD DS', '1', '1', 'Mario Bros', '2005', '5', 'Nintendo', 'Ingles', 'Japon', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com.mx%2FNintendo-Mario-Kart-DS-Racing%2Fdp%2FB000BFIASS&psig=AOvVaw0ZMhOngbTKP37Abof_vDRB&ust=1681487482052000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJDp_NWNp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=3Bx9WtQ5EMg'),
('14', 'TRANSFORMERS AUTOBOTS', '1', '1', 'Transformers', '2007', '5', 'ACTIVISION', 'Ingles', 'Estados Unidos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FTransformers-Autobots-Nintendo-DS%2Fdp%2FB000NJIV7W&psig=AOvVaw1VRMq5AlaR9vGHf_V0gHYJ&ust=1681488205212000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJDR6quQp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=bSmrEfyzWEM'),
('15', 'TRANSFORMERS DECEPTICONS', '1', '1', 'Transformers', '2007', '5', 'ACTIVISION', 'Ingles', 'Estados Unidos', 'https://m.media-amazon.com/images/I/51Wv0LkKIWL.jpg', 'https://www.youtube.com/watch?v=bSmrEfyzWEM'),
('16', 'STAR WARS THE CLONE WARS JEDI ALLIANCE', '1', '1', 'Star Wars', '2008', '5', 'Lucas arts', 'Castellano', 'Estados Unidos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2F-%2Fes%2FStar-Wars-Clone-Jedi-Alliance-Nintendo%2Fdp%2FB001BWRBAS&psig=AOvVaw1tcF54H0VK8TTgy32WVEfe&ust=1681488322408000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIjRsuOQp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=ZPGXKAeDuSY'),
('17', 'LEGO BATTLES', '1', '1', 'Lego', '2009', '5', 'Warner Bros INTERACTIVE ENTERTRAIMENT', 'Ingles', 'Estados Unidos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2F-%2Fes%2FLego-Battles-Nintendo-DS%2Fdp%2FB001QRJ7VY&psig=AOvVaw1W53kuGLUuxFIYLuCeCu8r&ust=1681488409085000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDC5YyRp_4CFQAAAAAdAAAAABAE', 'https://www.youtube.com/watch?v=rGVvTqPYEYw')