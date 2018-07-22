USE softblue_sql;

SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM pedido;
SELECT * FROM pedido_detalhe;

-- lista completa ALUNO e PEDIDO
SELECT * FROM aluno a
INNER JOIN pedido p ON p.aluno = a.codigo;

-- alunos cadastrados
SELECT DISTINCT(a.aluno) AS 'Alunos Cadastrados' FROM aluno a
INNER JOIN pedido p ON p.aluno = a.codigo;

-- aluno mais antigo
SELECT a.aluno, p.datahora FROM aluno a
INNER JOIN pedido p ON p.aluno = a.codigo 
WHERE p.datahora IN(SELECT MIN(datahora) FROM pedido);

-- aluno mais recente
SELECT a.aluno, p.datahora FROM aluno a
INNER JOIN pedido p ON p.aluno = a.codigo 
WHERE p.datahora IN(SELECT MAX(datahora) FROM pedido);

-- 3° aluno mais antigo
SELECT DISTINCT(a.aluno), datahora FROM aluno a
INNER JOIN pedido p GROUP BY p.aluno LIMIT 1 OFFSET 2;

-- lista de cursos vendidos
SELECT COUNT(*) AS 'Cursos Vendidos' FROM pedido p
INNER JOIN pedido_detalhe pd ON pd.pedido = p.codigo;

-- lista de cursos vendido e total arrecadado
SELECT COUNT(*) AS 'Cursos Vendidos', SUM(pd.valor) AS 'Total Arrecadado'  FROM pedido p
INNER JOIN pedido_detalhe pd ON pd.pedido = p.codigo;

-- valor médio cobrado por curso no pedido CODIGO 2
SELECT ROUND(AVG(valor),2) AS 'Média por curso no pedido 2' FROM pedido p
INNER JOIN pedido_detalhe pd ON pd.pedido = p.codigo WHERE p.codigo = 2;

-- curso mais caro da Softblue
SELECT * FROM curso WHERE valor
IN (SELECT MAX(valor) FROM curso);

-- curso mais barato da Softblue
SELECT * FROM curso WHERE valor
IN (SELECT MIN(valor) FROM curso);

-- valor total de cada pedido
SELECT p.codigo AS 'Código do pedido' , SUM(pd.valor) AS 'Valor total do pedido' FROM pedido_detalhe pd
INNER JOIN pedido p ON p.codigo = pd.pedido GROUP BY pd.pedido;

-- nome de cada instrutor e os cursos pelo qual ele é responsável
SELECT i.instrutor AS 'Instrutor', COUNT(c.curso) AS 'Quantidade de cursos' FROM instrutor i
INNER JOIN curso c ON c.instrutor = i.codigo GROUP BY i.instrutor;

-- número do pedido, nome do aluno, valor, cujos pedidos sejam > 500
SELECT p.codigo AS 'Código pedido', a.aluno AS 'Aluno', SUM(pd.valor) AS 'Valor Gasto' FROM pedido p
INNER JOIN pedido_detalhe pd ON p.codigo = pd.pedido
INNER JOIN aluno a ON a.codigo = p.aluno GROUP BY p.codigo HAVING SUM(pd.valor) > 500;

-- número do pedido, nome do aluno, cursos comprados
SELECT pd.pedido AS 'Número do pedido', a.aluno AS 'Nome do Aluno',COUNT(pd.curso) AS 'Cursos comprados pelo pedido' FROM pedido p 
INNER JOIN pedido_detalhe pd ON p.codigo = pd.pedido
INNER JOIN aluno a ON a.codigo = p.aluno GROUP BY pd.pedido HAVING count(*) > 1;

-- nome e endereço dos alunos que moram em avenidas
SELECT * FROM aluno WHERE endereco LIKE 'Av%';

-- nome dos cursos de java
SELECT * FROM curso WHERE curso LIKE '%Java%';
SELECT * FROM curso WHERE curso LIKE 'Java%';





