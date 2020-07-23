DROP DATABASE IF EXISTS ben_phone;

CREATE DATABASE ben_phone;

USE ben_phone;

/* Création des tables  */

CREATE TABLE `phone`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR (100) NOT NULL,
    PRIMARY KEY (`id`),
    brand_id INT(11)
);

CREATE TABLE `brand` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR (100) NOT NULL,
    `picture` VARCHAR(256) NOT NULL,
    PRIMARY KEY (`id`)
   
);

CREATE TABLE `repair`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR (100) NOT NULL,
    `price` int(11) NOT NULL,
    `time` int(11) NOT NULL,
    PRIMARY KEY (`id`)
);




/* Création des tables de jointure  */

CREATE TABLE `phone_repair` (
	`phone_id` INT(11),
	`repair_id` INT(11)
);



/*------ insertions--------*/

INSERT INTO brand (`id`, `name`, `picture`) VALUES 
(1, 'Apple', 'https://res.cloudinary.com/ricefab02/image/upload/v1595541798/samples/ecommerce/iphone_nziyid.jpg'),
(2, 'samsung', 'https://res.cloudinary.com/ricefab02/image/upload/v1595541828/samples/ecommerce/samsung_ocufxe.jpg'),
(3, 'Huawei', 'https://res.cloudinary.com/ricefab02/image/upload/v1595541854/samples/ecommerce/huawei_ryzzou.jpg')
;


INSERT INTO phone (`id`, `name`, `brand_id`) VALUES 
(1, '5/5c', 1),
(2, '5s/SE', 1),
(3, '6/6s', 1),
(4, '6+/6s+', 1),
(5, '7', 1),
(6, '7+', 1),
(7, '8', 1),
(8, '8+', 1),
(9, 'XR', 1),
(10, 'X', 1),
(11, 'XS', 1),
(12, 'XsMax', 1),
(13, 'Samsung bientôt disponible', 2),
(14, 'Huawei bientôt disponible', 3)
;

INSERT INTO repair (`id`, `name`, `price`, `time`) VALUES 
(1, 'LCD / Ecran', 40, 35),
(2, 'Chassis', 60, 60),
(3, 'Batterie', 35, 25),
(4, 'Connecteur de charge', 30, 30),
(5, 'Caméra avant', 25, 20),
(6, 'Caméra arrière', 25, 20),
(7, 'Bouton Acceuil', 30, 15),
(8, 'Ecouteur interne', 35, 20),
(9, 'Haut parleur', 35, 15),
(10, 'LCD / Ecran', 40, 35),
(11, 'Chassis', 60, 60),
(12, 'Batterie', 35, 25),
(13, 'Connecteur de charge', 30, 30),
(14, 'Caméra avant', 25, 20),
(15, 'Caméra arrière', 25, 20),
(16, 'Bouton Acceuil', 30, 15),
(17, 'Ecouteur interne', 35, 20),
(18, 'Haut parleur', 35, 15),
(19, 'LCD / Ecran', 45, 35),
(20, 'Chassis', 60, 60),
(21, 'Batterie', 35, 25),
(22, 'Connecteur de charge', 30, 30),
(23, 'Caméra avant', 25, 20),
(24, 'Caméra arrière', 30, 20),
(25, 'Bouton Acceuil', 30, 15),
(26, 'Ecouteur interne', 35, 20),
(27, 'Haut parleur', 35, 15),
(28, 'LCD / Ecran', 50, 35),
(29, 'Chassis', 60, 60),
(30, 'Batterie', 40, 25),
(31, 'Connecteur de charge', 30, 30),
(32, 'Caméra avant', 25, 20),
(33, 'Caméra arrière', 35, 20),
(34, 'Bouton Acceuil', 30, 15),
(35, 'Ecouteur interne', 35, 20),
(36, 'Haut parleur', 35, 15),
(37, 'LCD / Ecran', 55, 35),
(38, 'Chassis', 60, 60),
(39, 'Batterie', 35, 25),
(40, 'Connecteur de charge', 30, 30),
(41, 'Caméra avant', 25, 20),
(42, 'Caméra arrière', 70, 20),
(43, 'Bouton Acceuil', 35, 15),
(44, 'Ecouteur interne', 35, 20),
(45, 'Haut parleur', 35, 15),
(46, 'LCD / Ecran', 60, 35),
(47, 'Chassis', 75, 60),
(48, 'Batterie', 40, 25),
(49, 'Connecteur de charge', 35, 30),
(50, 'Caméra avant', 35, 20),
(51, 'Caméra arrière', 95, 20),
(52, 'Bouton Acceuil', 50, 15),
(53, 'Ecouteur interne', 35, 20),
(54, 'Haut parleur', 35, 15),
(55, 'LCD / Ecran', 55, 35),
(56, 'Chassis', 80, 90),
(57, 'Vitre arrière', 70, 300),
(58, 'Batterie', 40, 25),
(59, 'Connecteur de charge', 30, 30),
(60, 'Caméra avant', 30, 20),
(61, 'Caméra arrière', 70, 20),
(62, 'Bouton Acceuil', 45, 15),
(63, 'Ecouteur interne', 35, 20),
(64, 'Haut parleur', 35, 15),
(65, 'LCD / Ecran', 75, 35),
(66, 'Chassis', 100, 90),
(67, 'Vitre arrière', 75, 300),
(68, 'Batterie', 45, 25),
(69, 'Connecteur de charge', 30, 30),
(70, 'Caméra avant', 25, 20),
(71, 'Caméra arrière', 110, 20),
(72, 'Bouton Acceuil', 50, 15),
(73, 'Ecouteur interne', 35, 20),
(74, 'Haut parleur', 35, 15),
(75, 'LCD / Ecran', 140, 40),
(76, 'Chassis', 100, 90),
(77, 'Vitre arrière', 90, 300),
(78, 'Batterie', 55, 25),
(79, 'Connecteur de charge', 60, 30),
(80, 'Caméra avant', 45, 20),
(81, 'Caméra arrière', 95, 20),
(82, 'Bouton Acceuil', 50, 15),
(83, 'Ecouteur interne', 40, 20),
(84, 'Haut parleur', 40, 15),
(85, 'LCD / Ecran', 150, 40),
(86, 'Chassis', 100, 90),
(87, 'Batterie', 90, 300),
(88, 'Connecteur de charge', 55, 25),
(89, 'Caméra avant', 60, 30),
(90, 'Caméra arrière', 60,20),
(91, 'Bouton Acceuil', 130, 15),
(92, 'Ecouteur interne', 40, 20),
(93, 'Haut parleur', 40, 15),
(94, 'LCD / Ecran', 190, 40),
(95, 'Chassis', 130, 90),
(96, 'Batterie', 115, 300),
(97, 'Connecteur de charge', 65, 25),
(98, 'Caméra avant', 60, 30),
(99, 'Caméra arrière', 60, 20),
(100, 'Bouton Acceuil', 140, 15),
(101, 'Ecouteur interne', 40, 20),
(102, 'Haut parleur', 45, 15),
(103, 'LCD / Ecran', 265, 45),
(104, 'Chassis', 160, 90),
(105, 'Batterie', 120, 300),
(106, 'Connecteur de charge', 65, 25),
(107, 'Caméra avant', 65, 30),
(108, 'Caméra arrière', 60, 20),
(109, 'Bouton Acceuil', 150, 20),
(110, 'Ecouteur interne', 40, 20),
(111, 'Haut parleur', 40, 15)
;



INSERT INTO phone_repair (`phone_id`, `repair_id`) VALUES  
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), 
(2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), 
(3, 19), (3, 20), (3, 21), (3, 22), (3, 23), (3, 24), (3, 25), (3, 26), (3, 27), 
(4, 28), (4, 29), (4, 30), (4, 31), (4, 32), (4, 33), (4, 34), (4, 35), (4, 36), 
(5, 37), (5, 38), (5, 39), (5, 40), (5, 41), (5, 42), (5, 43), (5, 44), (5, 45), 
(6, 46), (6, 47), (6, 48), (6, 49), (6, 50), (6, 51), (6, 52), (6, 53), (6, 54), 
(7, 55), (7, 56), (7, 57), (7, 58), (7, 59), (7, 60), (7, 61), (7, 62), (7, 63), (7, 64), 
(8, 65), (8, 66), (8, 67), (8, 68), (8, 69), (8, 70), (8, 71), (8, 72), (8, 73), (8, 74), 
(9, 75), (9, 76), (9, 77), (9, 78), (9, 79), (9, 80), (9, 81), (9, 82), (9, 83), (9, 84),
(10, 85), (10, 86), (10, 87), (10, 88), (10, 89), (10, 90), (10, 91), (10, 92), (10, 93),
(11, 94), (11, 95), (11, 96), (11, 97), (11, 98), (11, 99), (11, 100), (11, 101), (11, 102), 
(12, 103), (12, 104), (12, 105), (12, 106), (12, 107), (12, 108), (12, 109), (12, 110), (12, 111)
; 

