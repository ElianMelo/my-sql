SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM instrutor;
SELECT * FROM pedido;
SELECT * FROM pedido_detalhe;
SELECT * FROM tipo;

CREATE VIEW curso_valor AS SELECT c.curso AS 'Curso', c.valor AS 'Valor' FROM curso c;

SELECT * FROM curso_valor;

CREATE VIEW curso_total AS SELECT c.curso AS 'Curso', t.tipo AS 'Tipo', i.instrutor AS 'Instrutor' FROM curso c
INNER JOIN instrutor i ON i.codigo = c.instrutor
INNER JOIN tipo t ON t.codigo = c.tipo;

SELECT * FROM curso_total;

SELECT * FROM aluno;
SELECT * FROM pedido;
SELECT * FROM pedido_detalhe;

CREATE VIEW pedidos_realizados AS
SELECT a.aluno AS 'Aluno', p.datahora AS 'Data e Hora', p.codigo AS 'Código do pedido' FROM pedido p
INNER JOIN aluno a ON a.codigo = p.aluno;

SELECT * FROM pedidos_realizados;
