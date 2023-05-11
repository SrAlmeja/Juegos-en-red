SELECT  MG.titulo, fran.nombre AS franquicia
FROM videojuegos MG
INNER JOIN franquicias fran ON MG.franquicia = fran.franquicia_id;

SELECT  MG.titulo, f.tipo AS franquicia, e.tipo AS estado
FROM videojuegos MG
INNER JOIN formato f ON MG.formato_id = f.formato_id
INNER JOIN estado e ON MG.estado_id = e.estado_id;

CREATE VIEW desarrolladoras AS SELECT MG.videojuegos_id, MG.franquicia_id, 
e.estadi, fo.formato, pa.plataforma 
FROM videojuegos MG
INNER JOIN franquicia fra ON MG.franquicia_id = fra.franquicia_id
INNER JOIN polataforma p ON MG_plataforma  = p.plataforma_id;
    
