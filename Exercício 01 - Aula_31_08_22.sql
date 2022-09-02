CREATE DATABASE exercicios;
USE exercicios;

CREATE TABLE PRODS
(codigo NUMERIC(3) NOT NULL, 
nome VARCHAR(50) NOT NULL, 
preco NUMERIC (5,2) NOT NULL, 
tipo CHAR(1) NUll, 
CONSTRAINT PK1 PRIMARY KEY (codigo));

INSERT INTO PRODS VALUES
(10, 'HD', 200, 'C'),
(11, 'Memória', 250, 'C'),
(12, 'Impressora', 680, 'P'),
(13, 'Processador', 600, 'C'),
(14, 'DVD-RW', 2, 'S'),
(15, 'Papel A4', 19, 'S'),
(16, 'Scammer', 199, 'P');

SELECT nome FROM PRODS;

SELECT tipo FROM PRODS;

SELECT tipo, COUNT(tipo) FROM PRODS GROUP BY tipo;

SELECT AVG(preco) FROM PRODS;

SELECT AVG(preco) FROM PRODS WHERE tipo = 'S'; 

SELECT tipo, AVG(preco) FROM PRODS GROUP BY tipo;
