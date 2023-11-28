show databases;
USE geekstore_db;
CREATE TABLE product_table (
product_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
product_price VARCHAR (50) NOT NULL,
product_description VARCHAR (200) NOT NULL,
id_categoria INT NOT NULL,
product_stock INT NOT NULL,
PRIMARY KEY (product_id)
);
INSERT INTO product_table( product_name,product_price, product_description, product_stock, id_categoria)
VALUES
('Marvel Must Have Vol.01: Civil War','$12.000','El Universo Marvel está cambiando. Es tiempo de elegir: ¿de qué lado estás?','3','6'),
('Flashpoint: Absoluto - DC Esenciales','$8.100','Corresponde a Flashpoint #1-5,Flashpoint: Reverse Flash y Flash #0.','3','7'),
('MY LITTLE MONSTER 01','$6000','¡La chica fría y el chico agresivo saldrán de sus zonas de confort e iniciarán una extraña relación!','5','8'),
('LA NOCHE MAS OSCURA','$12000','Autor:Geoff Johns - CONTIENE DETALLES EN TAPA Y LOMO QUE BRILLAN EN LA OSCURIDAD!','0','9'),
('Mysterio - Impresion 3D','15000 ','Altura 30CM','3','10'),
('Miss Minutes - Impresion 3D','11000','altura 15CM','2','11'),
('Iron Man - Impresion 3D','13000','Altura 30CM','3','12'),
('Chainsaw Man Vol.01','6000','• Tomo de aproximadamente 200 páginas.• Formato tankoubon con sobrecubierta.','2','13'),
('Broly - Impresion 3D','20000','Altura 30cm','0','14');

CREATE TABLE Categorias (
    ID_Categoria INT NOT NULL AUTO_INCREMENT,
    Nombre_Categoria VARCHAR(255) NOT NULL,
    Description_Cat TEXT,
    Creado_En TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ID_categoria)
);
INSERT INTO Categorias (Nombre_Categoria, Description_cat)
VALUES
('Coleccionables','Los mejores coleccionables de cine,manga y comics!!.'),
('MARVEL','Los mejores comics de la editorial Marvel'),
('DC','Las mejores historias de Batman, Flash, Superman y mas!!'),
('Star wars','Recorre las estrellas junto Luke, Mando y Bobba Fett'),
('Manga','Las mejores historias provenientes de la nacion del sol naciente!');