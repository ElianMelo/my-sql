CREATE DATABASE random_sql;

USE random_sql;

-- Aparelhos

CREATE TABLE aparelhos
(
	id int unsigned not null auto_increment,
	aparelho varchar(30) not null,
    potencia double not null,
    tempo_uso double not null,
    PRIMARY KEY(id)
);

DROP TABLE aparelhos;

INSERT INTO aparelhos(aparelho, potencia, tempo_uso) VALUES ('Ar Condicionado', 1.5, 8);
INSERT INTO aparelhos(aparelho, potencia, tempo_uso) VALUES ('Chuveiro Elétrico', 3.3, 0.333);
INSERT INTO aparelhos(aparelho, potencia, tempo_uso) VALUES ('Freezer', 0.2, 10);
INSERT INTO aparelhos(aparelho, potencia, tempo_uso) VALUES ('Geladeira', 0.35, 10);
INSERT INTO aparelhos(aparelho, potencia, tempo_uso) VALUES ('Lâmpadas', 0.10, 6);

SELECT aparelho AS 'Aparelho', potencia AS 'Potência (KW)', tempo_uso AS 'Tempo de uso diário (horas)'  FROM aparelhos;

UPDATE aparelhos SET aparelho = 'Ornitorrinco' WHERE id = 1;
UPDATE aparelhos SET aparelho = 'Girafa' WHERE id = 2;
UPDATE aparelhos SET aparelho = 'Pinguim' WHERE id = 3;
UPDATE aparelhos SET aparelho = 'Leão' WHERE id = 3;
UPDATE aparelhos SET aparelho = 'Tigre' WHERE id = 4;
UPDATE aparelhos SET aparelho = 'Elefante' WHERE id = 5;

ALTER TABLE aparelhos CHANGE COLUMN aparelho animais varchar(30) not null;
ALTER TABLE aparelhos CHANGE COLUMN potencia forca varchar(30) not null;


SELECT animais AS 'Animais', forca AS 'Forca (N)', tempo_uso AS 'Tempo de uso diário (horas)'  FROM aparelhos;

SELECT aparelho AS 'Aparelho', potencia AS 'Potência (KW)', tempo_uso AS 'Tempo de uso diário (horas)'  FROM aparelhos;

SELECT * FROM aparelhos WHERE tempo_uso > 7;

-- Desmatamento

CREATE TABLE desmatamento_amazonia
(
	id int unsigned not null auto_increment,
	ano int unsigned not null,
    area double unsigned not null,
    PRIMARY KEY(id)
);

ALTER TABLE desmatamento_amazonia auto_increment = 1;

INSERT INTO desmatamento_amazonia(id, ano, area) VALUES (1, 2001, 18165);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2002, 21393);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2003, 25247);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2004, 27423);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2005, 18846);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2006, 14109);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2007, 11532);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2008, 12911);
INSERT INTO desmatamento_amazonia(ano, area) VALUES (2009, 7464);

SET SQL_SAFE_UPDATES = 0;

DELETE FROM desmatamento_amazonia WHERE ano = 2001;
DELETE FROM desmatamento_amazonia WHERE ano = 2002;
DELETE FROM desmatamento_amazonia WHERE ano = 2003;
DELETE FROM desmatamento_amazonia WHERE ano = 2004;
DELETE FROM desmatamento_amazonia WHERE ano = 2005;
DELETE FROM desmatamento_amazonia WHERE ano = 2006;
DELETE FROM desmatamento_amazonia WHERE ano = 2007;
DELETE FROM desmatamento_amazonia WHERE ano = 2008;
DELETE FROM desmatamento_amazonia WHERE ano = 2009;

SELECT * FROM desmatamento_amazonia;






