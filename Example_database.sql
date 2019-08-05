/* Aryom Zinchdnko, HW1


--Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

*/


DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT PRIMARY KEY, 
    name VARCHAR(50),
    
);