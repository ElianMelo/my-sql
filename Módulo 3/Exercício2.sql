 USE softblue_sql;
 
 -- Adiciona a coluna data_nascimento com 10 caracteres
 ALTER TABLE aluno ADD data_nascimento varchar(10);
 
 -- Altera a coluna data_nascimento para nascimento tipo date
 ALTER TABLE aluno CHANGE COLUMN data_nascimento nascimento date null;
 
 -- Adiciona o índice fk_aluno
 ALTER TABLE aluno ADD INDEX index_aluno(aluno);
 
 -- Adiciona a coluna email com 100 caracteres
 ALTER TABLE instrutor ADD email varchar(100);
 
 -- Adiciona o índice fk_instrutor
 ALTER TABLE instrutor ADD INDEX index_instrutor(instrutor);
 
 -- Exclui a coluna email
 ALTER TABLE instrutor DROP email;
 