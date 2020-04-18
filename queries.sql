INSERT INTO category ( name, symbol_code ) VALUES
('Доски и лыжи', 'boards'), ('Крепления', 'attachment'), ('Ботинки', 'boots'), ('Одежда', 'clothing'), ('Инструменты', 'tools'), ('Разное', 'other');

INSERT INTO lot ( created_date, name, description, img_link, price, expiration_date, step_bets, creatorId, winnerId ) VALUES
( '2020-03-16 09:00:00', '2014 Rossignol District Snowboard', 'Cheapest snowboard', 'img/lot-1.jpg', '10999', '2020-05-13 09:00:00', '300', '1', '4'),
( '2020-03-17 08:00:00', 'DC Ply Mens 2016/2017 Snowboard', 'Expensivest snowboard', 'img/lot-2.jpg', '159999', '2020-05-14 10:00:00', '500', '2', '4'),
( '2020-03-15 11:00:00', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Attachment for large/exstra large', 'img/lot-3.jpg', '8000', '2020-05-15 09:00:00', '200', '3', '1'),
( '2020-03-11 10:00:00', 'Ботинки для сноуборда DC Mutiny Charocal', 'Shoes', 'img/lot-4.jpg', '10999', '2020-05-16 11:00:00', '250', '1', '2'),
( '2020-03-17 10:00:00', 'Куртка для сноуборда DC Mutiny Charocal', 'Jacket', 'img/lot-5.jpg', '7500', '2020-05-17 10:00:00', '150', '3', '3'),
( '2020-03-18 09:00:00', 'Маска Oakley Canopy', 'img/lot-6.jpg', 'Glasses', '5400', '2020-05-18 08:00:00', '100', '3', '1');
INSERT INTO bet (date, price, userId, lotId) VALUES
( '2020-04-13 09:00:00', '12000', '3', '1'),
( '2020-04-13 09:00:00', '14000', '1', '2'),
( '2020-04-12 09:00:00', '16000', '2', '3'),
( '2020-04-11 09:00:00', '18000', '4', '4'),
( '2020-04-16 09:00:00', '20000', '4', '5'),
( '2020-04-15 09:00:00', '22000', '2', '6');
INSERT INTO user ( register_date, email, name, password, contact, createdLotId, createdBetId ) VALUES
( '2019-09-17 09:00:00', 'vladimir@zhirinovsky.ru', 'Vladimir Zhirinovsky', '1vladimir1', '+123567', '1', '2' ),
( '2020-02-13 09:00:00', 'johnny@sins.hub', 'Johnny Sins', 'phJohny', 'adress.com' '4', '3' ),
( '2020-01-10 09:00:00', 'barack@obama.us', 'Barack Obama', 'barack111', '+19515256' '5', '1' ),
( '2018-05-25 09:00:00', 'saddam@hussein.iq', 'Saddam Hussein', 'hussein', 'anywhere' '6', '4' );

SELECT * FROM category;
SELECT name FROM lot WHERE id=3;
SELECT c.name FROM lot l JOIN category c ON l.description = c.symbol_code WHERE c.id = 3 ORDER BY b.date DESC;
UPDATE lot SET name = 'DC Ply Mens 2017 Snowboard' WHERE id=1;
SELECT b.lotId FROM bet b JOIN lot l ON b.lotId = l.id WHERE l.id = 3 ORDER BY b.date DESC;
