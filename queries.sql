INSERT INTO category ( name ) VALUES ('Доски и лыжи'), ('Крепления'), ('Ботинки'), ('Одежда'), ('Инструменты'), ('Разное');
INSERT INTO user ( name ) VALUES ('Vladimir Zhirinovsky'), ('Johnny Sins'), ('Barack Obama'), ('Saddam Hussein');
INSERT INTO lot ( name, img_link, price, expiration_date ) VALUES
( '2014 Rossignol District Snowboard', 'img/lot-1.jpg', '10999', '2020-05-13'),
( 'DC Ply Mens 2016/2017 Snowboard', 'img/lot-2.jpg', '159999', '2020-05-14'),
( 'Крепления Union Contact Pro 2015 года размер L/XL', 'img/lot-3.jpg', '8000', '2020-05-15'),
( 'Ботинки для сноуборда DC Mutiny Charocal', 'img/lot-4.jpg', '10999', '2020-05-16'),
( 'Куртка для сноуборда DC Mutiny Charocal', 'img/lot-5.jpg', '7500', '2020-05-17'),
( 'Маска Oakley Canopy', 'img/lot-6.jpg', '5400', '2020-05-18');
INSERT INTO bet (price) VALUES ('12000'), ('14000'), ('16000'), ('18000'), ('20000'), ('22000');

SELECT * FROM category;
SELECT name FROM lot WHERE id=3;
UPDATE lot SET name = 'DC Ply Mens 2017 Snowboard' WHERE id=1;
