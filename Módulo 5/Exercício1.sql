USE softblue_sql;

SELECT * FROM curso;
SELECT * FROM tipo;
SELECT * FROM instrutor;

SELECT c.curso AS 'Curso', t.tipo AS 'Tipo' FROM curso c
INNER JOIN tipo t ON c.tipo = t.codigo;

SELECT c.curso AS 'Curso', t.tipo AS 'Tipo', i.instrutor AS 'Instrutor', i.telefone AS 'Telefone' FROM curso c
INNER JOIN tipo t ON c.tipo = t.codigo
INNER JOIN instrutor i ON c.instrutor = i.codigo;

SELECT * FROM pedido;
SELECT * FROM pedido_detalhe;
SELECT * FROM curso;
SELECT * FROM aluno;

SELECT p.codigo AS 'Codigo', p.datahora AS 'Data e Hora', pd.curso AS 'Código dos cursos' FROM pedido p
INNER JOIN pedido_detalhe pd ON pd.pedido = p.codigo;

SELECT p.codigo AS 'Codigo', p.datahora AS 'Data e Hora', c.curso AS 'Nome dos cursos' FROM pedido p
INNER JOIN pedido_detalhe pd ON pd.pedido = p.codigo
INNER JOIN curso c ON c.codigo = pd.curso;

SELECT p.codigo AS 'Codigo do pedido', p.datahora AS 'Data e Hora', a.aluno AS 'Aluno', c.curso AS 'Nome dos cursos' FROM pedido p
INNER JOIN pedido_detalhe pd ON pd.pedido = p.codigo
INNER JOIN aluno a ON a.codigo = p.aluno
INNER JOIN curso c ON c.codigo = pd.curso;

