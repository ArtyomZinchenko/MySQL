/* Aryom Zinchdnko, HW2


Пусть в таблице catalogs базы данных shop в строке name могут находиться пустые строки и поля принимающие значение NULL. 
Напишите запрос, который заменяет все такие поля на строку ‘empty’. 
Помните, что на уроке мы установили уникальность на поле name. Возможно ли оставить это условие? Почему?
*/




DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
id INT UNSIGNED,
name VARCHAR(255)
);


SELECT *,
      REPLACE( name, ' ', 'empty' ) AS name,
      REPLACE( name, NULL, 'empty' ) AS name
FROM catalogs;