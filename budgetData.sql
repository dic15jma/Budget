/* 
  Skapar alla tabeller
*/

PRAGMA foreign_keys=OFF;
DROP TABLE IF EXISTS Budget;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Spendings;
DROP TABLE IF EXISTS Month;
DROP TABLE IF EXISTS Year;
PRAGMA foreign_keys=ON;

CREATE TABLE Category(
name VARCHAR(30),
PRIMARY KEY (name)
);

CREATE TABLE Budget(
summa int,
name VARCHAR(30),
PRIMARY KEY (summa,name),
FOREIGN KEY (name) references Category(name)
);

CREATE TABLE Spendings(
spent int,
name VARCHAR(30),
month VARCHAR(10),
PRIMARY KEY (spent,name,month),
FOREIGN KEY (name) references Category(name),
FOREIGN KEY (month) references Month(month)
);

CREATE TABLE Month(
month VARCHAR(10),
year int,
date date, 
PRIMARY KEY(month)
FOREIGN KEY(year) references Year(year)
);

CREATE TABLE Year(
year int,
PRIMARY KEY(year)
);

/*
  Lägger in kundernas namn och address
*/
INSERT INTO Month(month) VALUES('Januari');
INSERT INTO Month(month) VALUES('Februari');
INSERT INTO Month(month) VALUES('Mars');
INSERT INTO Month(month) VALUES('April');
INSERT INTO Month(month) VALUES('Maj');
INSERT INTO Month(month) VALUES('Juni');
INSERT INTO Month(month) VALUES('Juli');
INSERT INTO Month(month) VALUES('Augusti');
INSERT INTO Month(month) VALUES('September');
INSERT INTO Month(month) VALUES('Oktober');
INSERT INTO Month(month) VALUES('November');
INSERT INTO Month(month) VALUES('December');
INSERT INTO Year(year) VALUES('2017');
INSERT INTO Year(year) VALUES('2018');
INSERT INTO Year(year) VALUES('2019');

