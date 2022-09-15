CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE houses(
  id INT AUTO_INCREMENT PRIMARY KEY,
  bedrooms INT NOT NULL,
  bathrooms INT NOT NULL,
  levels INT NOT null,
  year INT NOT NULL,
  price INT NOT NULL,
  imgUrl VARCHAR(255) NOT NULL,
  description TEXT NOT NULL
) default charset utf8;

INSERT INTO houses 
(bedrooms, bathrooms, levels, year, price, imgUrl, description)
VALUES
(4, 3, 2, 2003, 400000, "http://thiscatdoesnotexist.com", "It's a house");

INSERT INTO houses 
(bedrooms, bathrooms, levels, year, price, imgUrl, description)
VALUES
(3, 2, 2, 1997, 300000, "https://unsplash.com/photos/eWqOgJ-lfiI", "It's another house");