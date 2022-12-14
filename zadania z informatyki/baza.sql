CREATE DATABASE baza

USE baza

CREATE TABLE restarant(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
NAME VARCHAR(50) NOT NULL,
CITY VARCHAR(30) NOT NULL,
ADDRESS VARCHAR(100) NOT NULL,
ZIP_CODE VARCHAR(6) NOT NULL
),

CREATE TABLE employee(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
NAME VARCHAR(60) ,
surname VARCHAR(60),
role_id INT NOT NULL,
personal_id VARCHAR(11),
FOREIGN_KEY (role_id) REFERENCES roles(id)

),


CREATE TABLE Restaurant_Employee(
restaurant_id INT NOT NULL,
employee_id INT NOT NULL,
role_id INT NOT NULL,
FOREIGN_KEY (restaurant_id) REFERENCES restaurant(id),
FOREIGN_KEY (employee_id) REFERENCES employee(id),
FOREIGN_KEY (role_id) REFERENCES roles(id),
),

CREATE TABLE reservation(
    id INT NOT NULL AUTO_INCREMENT,
    phone VARCHAR(12) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    guests INT NOT NULL,
    date DATETIME,
    FOREIGN_KEY (restaurant_id) INT REFERENCES restarant(id),
),

CREATE TABLE role(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name NOT NULL VARCHAR(50),
),CREATE DATABASE baza

USE baza

CREATE TABLE restarant(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
NAME VARCHAR(50) NOT NULL,
CITY VARCHAR(30) NOT NULL,
ADDRESS VARCHAR(100) NOT NULL,
ZIP_CODE VARCHAR(6) NOT NULL
),

CREATE TABLE employee(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
NAME VARCHAR(60) ,
surname VARCHAR(60),
role_id INT NOT NULL,
personal_id VARCHAR(11),
FOREIGN_KEY (role_id) REFERENCES roles(id)

),


CREATE TABLE Restaurant_Employee(
restaurant_id INT NOT NULL,
employee_id INT NOT NULL,
role_id INT NOT NULL,
FOREIGN_KEY (restaurant_id) REFERENCES restaurant(id),
FOREIGN_KEY (employee_id) REFERENCES employee(id),
FOREIGN_KEY (role_id) REFERENCES roles(id),
),

CREATE TABLE reservation(
    id INT NOT NULL AUTO_INCREMENT,
    phone VARCHAR(12) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    guests INT NOT NULL,
    date DATETIME,
    FOREIGN_KEY (restaurant_id) INT REFERENCES restarant(id),
),

CREATE TABLE role(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name NOT NULL VARCHAR(50),
),

CREATE TABLE meal(
    id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    mealtype_id INT NOT NULL,
    FOREIGN_KEY (mealtype_id) INT REFERENCES mealtype(id),
),

CREATE TABLE mealtype(
    id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
),

CREATE TABLE meal(
    id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    mealtype_id INT NOT NULL,
    FOREIGN_KEY (mealtype_id) INT REFERENCES mealtype(id),
),

CREATE TABLE mealtype(
    id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
),


