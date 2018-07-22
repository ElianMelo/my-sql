SELECT * FROM aluno;

SELECT * FROM curso;

SELECT curso AS 'Cursos' FROM curso;

SELECT curso,valor FROM curso WHERE valor > 200;

SELECT curso,valor FROM curso WHERE valor > 200 AND valor < 300;

SELECT * FROM pedido WHERE datahora > '2010-04-15' AND datahora < '2010-04-18';

SELECT * FROM pedido WHERE datahora > '2010-04-15' AND datahora < '2010-04-16'; 

