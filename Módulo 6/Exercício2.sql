USE softblue_sql;

-- lista de nomes de cursos e o menor valor de venda já praticado
SELECT curso, (SELECT MIN(valor) FROM pedido_detalhe pd WHERE pd.curso = curso.codigo) AS 'Menor valor' FROM curso;

-- Cursos da Softblue cujo sejam do tipo 'Programação' Utilizando IN
SELECT * FROM curso c
INNER JOIN tipo t ON c.tipo = t.codigo WHERE t.tipo IN
(
	SELECT tipo FROM tipo WHERE tipo = 'Programação'
);

-- Cursos da Softblue cujo sejam do tipo 'Programação' Utilizando EXISTS
SELECT curso FROM curso WHERE EXISTS
(
	SELECT codigo FROM tipo t WHERE t.codigo = curso.tipo AND t.tipo = 'Programação'
);

-- Lista com nomes dos instrutores e vendas relacionadas aos seus cursos
SELECT i.instrutor AS 'Instrutor', SUM(pd.valor) AS 'Total de vendas' FROM instrutor i 
INNER JOIN curso c ON c.instrutor = i.codigo
INNER JOIN pedido_detalhe pd ON pd.curso = c.codigo GROUP BY i.instrutor HAVING SUM(pd.valor) IN
(
	SELECT SUM(pd.valor) FROM instrutor i 
	INNER JOIN curso c ON c.instrutor = i.codigo
	INNER JOIN pedido_detalhe pd ON pd.curso = c.codigo GROUP BY i.instrutor
);

-- Nome e quanto cada um já gastou em cursos
CREATE VIEW alunos_e_compras AS 
SELECT a.aluno AS 'Alunos', SUM(pd.valor) AS 'Quantia gasta em cursos' FROM aluno a
LEFT JOIN pedido p ON p.aluno = a.codigo
LEFT JOIN pedido_detalhe pd ON pd.pedido = p.codigo GROUP BY a.aluno;

SELECT * FROM alunos_e_compras;






