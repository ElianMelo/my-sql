SELECT * FROM aluno;

UPDATE aluno SET endereco = 'Av. Brasil 778' WHERE aluno = 'José';
UPDATE aluno SET email = 'cristiano@softblue.com.br' WHERE aluno = 'Cris';

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM curso;

UPDATE curso SET valor = 270 WHERE curso = 'Java Fundamentos';
UPDATE curso SET valor = 170 WHERE curso = 'SQL Completo';
UPDATE curso SET valor = 270 WHERE curso = 'PHP Básico';


UPDATE curso SET valor = ROUND(valor * 1.1, 2) WHERE valor < 300;

UPDATE curso SET curso = 'PHP Fundamentos' WHERE codigo = 4;