SET FOREIGN_KEY_CHECKS = 0;

-- En la nube
-- USE `b8iyr7xai8wk75ismpbt`;

-- En local
USE `todolist-api2`;

INSERT INTO `group` (`created_date`, `description`, `name`)
VALUES ('2006-10-12', 'Solo quieren ver el mundo arder', 'Pepe'),
       ('2022-05-06', 'Dicen que su factura del agua es negativa', 'Otakus'),
       ('2000-03-09', 'Se dice que son seres que existen desde el inicio de los multiversos', 'AISS enjoyers');

INSERT INTO `group_user` (`id_group`, `id_user`)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6);

INSERT INTO `task` (`annotation`, `description`, `difficulty`, `finished_date`, `priority`, `start_date`,
                    `status`, `title`)
VALUES ('Vacaciones', 'Quiero vacaciones', 'HARDCORE', '2020-01-31', 5, '2020-01-01', 'DRAFT', 'Vacaciones'),
       ('Quiero subir o mantenerme no bajar a hierro', 'Salir de bronce en el lol', 'I_WANT_TO_DIE', '2022-12-15', 5,
        '2021-01-01', 'IN_PROGRESS', 'Bronce'),
       ('Sin hueso pero con pepinillo', 'Comprar aceitunas sin hueso', 'MEDIUM', '2022-05-29', 2, '2022-05-19',
        'IN_PROGRESS', 'Aceitunas'),
       ('err Betiss', 'Ver el betis', 'EASY', '2022-08-08', 5, '2022-08-07', 'DONE', 'VIVA ER BETIS'),
       ('Hazte con todos, los 892...', 'Completar la pokedex para el profesor Oak', 'I_WANT_TO_DIE', '2022-11-30', 3,
        '2021-05-17', 'IN_REVISION', 'Entrenador Pokemon'),
       ('Comprar uno a prueba de enfados', 'Nuevo mando para jugar elden ring', 'MEDIUM', '2022-06-06', 4,
        '2022-01-19', 'DRAFT', 'Comprar mando nuevo'),
       ('Como aprendo el inglés si ni se el español', 'El inglés se enseña mal y punto', 'HARDCORE', '2023-05-26', 0,
        '2020-04-22', 'CANCELLED', '¿Aprender Inglés? Na'),
       ('Cuesta 0.2€, devuelveme el cambio.', 'Para comprar el pan, ir al polvillo.', 'EASY', '2020-03-04', 5,
        '2020-03-03', 'IN_PROGRESS', 'Comprar el pan.');

INSERT INTO `user` (`avatar`, `bio`, `email`, `location`, `name`, `surname`, `password`, `username`)
VALUES ('https://es.web.img3.acsta.net/pictures/17/05/19/13/05/463219.jpg', 'Ser celestial, nacido para ayudar',
        'miscosama@gmail.com', 'mi casa', 'Misco', 'Jones', '123456', 'miscosama'),
       ('http://pm1.narvii.com/6120/9cd70762280f430ded8158c06c287e82b84d0101_00.jpg',
        'Nacío en un día en el que el sol brillo de tal manera que dislumbró a los imples mortales',
        'niunpelotonto@tortilla.ong', '3000 viviendas', 'El Pelón', 'Calvo', '123456', 'niunpelotonto'),
       ('https://i.pinimg.com/originals/09/52/27/095227e83b41e44b8de3ba8e81efe2e1.jpg',
        'Solamente defender al mundo del caos', 'jojito@gmail.com', 'La Tierra', 'Yonatan', 'Yostar', '123456',
        'jojito'),
       ('https://img-17.ccm2.net/M5IDYIxs4R9RmHBLCt9l-PWqYLc=/500x/eff2597a02394167920c9d1cf7945a3c/ccm-faq/C3.JPG',
        'Kaeya Alberich es el hijo adoptivo de los Ragnvindr, una familia magnate con muchas bodegas',
        'tucopito@hotmal.com', 'Khaenri\'ah', 'Kaeya', 'Alberich', '123456', 'tucopito'),
       ('https://static.wikia.nocookie.net/yugiohenespanol/images/c/c4/Drag%C3%B3n_c%C3%B3smico_blazar.jpg/revision/latest/scale-to-width-down/1200?cb=20200201203300&path-prefix=es',
        'El ao shin que nunca salió', 'elForjadorDeLasEstrellas@riot.com', 'En el espacio picha', 'Aurelion', 'Sol',
        '1233456', 'elForjadorDeLasEstrellas'),
       ('https://pbs.twimg.com/media/FNgG3rCXEAEng6B.jpg', 'Fui sifu de Willy Wonka, el sabe todo gracias a mí',
        'kingafrica@us.es', 'ESPAÑA', 'Paquito', 'El Chocolatero', '123456', 'kingafrica');

INSERT INTO `user_task` (`id_user`, `id_task`)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (6, 7);

SET FOREIGN_KEY_CHECKS = 1;
