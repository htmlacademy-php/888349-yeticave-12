CREATE DATABASE yeticave
    DEFAULT CHARACTER SET utf8;


USE yeticave;

CREATE TABLE category (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(128) NOT NULL,
                            symbol_code VARCHAR(128)
);

CREATE TABLE lot (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         created_date DATETIME,
                         name VARCHAR(128) NOT NULL,
                         description VARCHAR(255),
                         img_link VARCHAR(255),
                         price INT NOT NULL,
                         expiration_date DATETIME,
                         step_bets INT
);

CREATE TABLE bet (
                     id INT AUTO_INCREMENT PRIMARY KEY,
                     date DATETIME,
                     price INT NOT NULL
);

CREATE TABLE user (
                     id INT AUTO_INCREMENT PRIMARY KEY,
                     register_date DATETIME,
                     email VARCHAR(128),
                     name VARCHAR(128) NOT NULL,
                     password VARCHAR(64),
                     contact VARCHAR(255)
);
