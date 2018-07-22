USE softblue_sql;

INSERT INTO tipo (tipo) VALUES ('Banco de Dados');
INSERT INTO tipo (tipo) VALUES ('Programação');
INSERT INTO tipo (tipo) VALUES ('Modelagem de Dados');

SELECT * FROM tipo;

INSERT INTO instrutor(instrutor, telefone) VALUES ('André Milani', '1111-1111');
INSERT INTO instrutor(instrutor, telefone) VALUES ('Carlos Tosin', '1212-1212');

SELECT * FROM instrutor;

INSERT INTO curso(curso, tipo, instrutor, valor) VALUES ('Java Fundamentos', 2, 2, 270);
INSERT INTO curso(curso, tipo, instrutor, valor) VALUES ('Java Avançado', 2, 2, 330);
INSERT INTO curso(curso, tipo, instrutor, valor) VALUES ('SQL Completo', 1, 1, 170);
INSERT INTO curso(curso, tipo, instrutor, valor) VALUES ('PHP Básico', 2, 1, 270);

SELECT * FROM curso;

INSERT INTO aluno(aluno, endereco, email) VALUES('José','Rua XV de Novembro 72','jose@softblue.com.br');
INSERT INTO aluno(aluno, endereco, email) VALUES('Wagner','Av. Paulista','wagner@softblue.com.br');
INSERT INTO aluno(aluno, endereco, email) VALUES('Emílio','Rua Lajes 103, ap:701','emilio@softblue.com.br');
INSERT INTO aluno(aluno, endereco, email) VALUES('Cris','Rua Tauney 22','cris@softblue.com.br');
INSERT INTO aluno(aluno, endereco, email) VALUES('Regina','Rua Salles 305','regina@softblue.com.br');
INSERT INTO aluno(aluno, endereco, email) VALUES('Fernando','Av. Central 30','fernando@softblue.com.br');

UPDATE aluno SET email = 'jose@softblue.com.br' WHERE aluno = 'José';

SELECT * FROM aluno;

ALTER TABLE pedido auto_increment = 1;

-- CONSULTAR A TABELA
INSERT INTO pedido(codigo, aluno, datahora) VALUES(1, '2','2010-04-15 11:23:32');
INSERT INTO pedido(aluno, datahora) VALUES('2','2010-04-15 14:36:21');
INSERT INTO pedido(aluno, datahora) VALUES('3','2010-04-16 11:17:45');
INSERT INTO pedido(aluno, datahora) VALUES('4','2010-04-17 14:27:22');
INSERT INTO pedido(aluno, datahora) VALUES('5','2010-04-18 11:18:19');
INSERT INTO pedido(aluno, datahora) VALUES('6','2010-04-19 13:47:35');
INSERT INTO pedido(aluno, datahora) VALUES('6','2010-04-20 18:13:44');

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE pedido AUTO_INCREMENT = 1;

DELETE FROM pedido;

SELECT * FROM pedido;

INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (1,1,270);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (1,2,330);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (2,1,270);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (2,2,330);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (2,3,170);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (3,4,270);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (4,2,330);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (4,4,270);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (5,3,170);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (6,3,170);
INSERT INTO pedido_detalhe(pedido, curso, valor) VALUES (7,4,270);

SELECT * FROM pedido_detalhe;

