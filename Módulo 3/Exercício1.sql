-- Cria o banco de dados softblue_sql
CREATE DATABASE softblue_sql DEFAULT CHARSET=latin1 ;

-- Eclui o bando de dados softblue_sql
DROP DATABASE softblue_sql;

-- Usa o banco de dados sotblue_sql
USE softblue_sql;

-- Cria a tabela tipo
CREATE TABLE tipo
(
	codigo int unsigned not null auto_increment, -- Cria o ID codigo
	tipo varchar(32) not null,					 -- Descrição
	PRIMARY KEY(codigo)						     -- Define codigo como chave primária
);

CREATE TABLE instrutor
(
	codigo int unsigned not null auto_increment,-- Cria o ID codigo
    instrutor varchar(64) not null,				-- Nome do instrutor
    telefone varchar(9) null,					-- Os 8 digitos do telefone e o "-"
    PRIMARY KEY(codigo)							-- Define codigo como chave primária


);

CREATE TABLE curso
(
	codigo int unsigned not null auto_increment,	   -- Cria o ID codigo
    curso varchar(64) not null,						   -- Nome do curso
    tipo int unsigned not null,						   -- Tipo do curso
    instrutor int unsigned not null,				   -- Instrutor do curso
    valor double not null,							   -- Preço do curso
    PRIMARY KEY(codigo),							   -- Define codigo como chave primária
    INDEX fk_tipo(tipo),							   -- Define o campo TIPO como um índice
    INDEX fk_instrutor(instrutor),					   -- Define o campo INSTRUTOR como um índice
    FOREIGN KEY(tipo) REFERENCES tipo(codigo),		   -- Cria o relacionamento (FK) com a tabela TIPO
    FOREIGN KEY(instrutor) REFERENCES instrutor(codigo)-- Cria o relacionamento (FK) com a tabela INSTRUTOR
    -- CONSTRAINT fk_curso_tipo FOREIGN KEY(tipo) REFERENCES tipo(codigo),-- Define tipo como chave estrangeira
    -- CONSTRAINT fk_curso_instrutor FOREIGN KEY(instrutor) REFERENCES instrutor(codigo)-- Define instrutor como chave estrangeira
);

CREATE TABLE aluno
(
	codigo int unsigned not null auto_increment,-- Cria o ID codigo
    aluno varchar(64) not null, 				-- Nome do aluno
    endereco varchar(230) not null, 			-- Endereço do aluno
    email varchar(128) not null, 				-- E-mail do aluno
    PRIMARY KEY(codigo)							-- Define codigo como Chave Primária
);

CREATE TABLE pedido
(
	codigo int unsigned not null auto_increment,-- Cria o ID codigo 
    aluno int unsigned not null,				-- Aluno quem fez o pedido
    datahora datetime not null, 				-- A data e hora do pedido	
	PRIMARY KEY(codigo),						-- Define codigo como Chave Primária
    INDEX fk_aluno(aluno),						-- Cria o Índice aluno
    FOREIGN KEY(aluno) REFERENCES aluno(codigo) -- Define aluno como Chave Estrangeira 
    -- CONSTRAINT fk_pedido_aluno FOREIGN KEY(aluno) REFERENCES aluno(codigo)--
);

CREATE TABLE pedido_detalhe
(
	pedido int unsigned not null,				  -- Número do pedido
    curso int unsigned not null,				  -- Curso do pedido
    valor double not null,						  -- Valor do pedido
	INDEX fk_pedido(pedido),					  -- Cria o Índice pedido
    INDEX fk_curso(curso),						  -- Cria o Índice curso
    PRIMARY KEY(pedido,curso),					  -- Cria uma Chave Composta
    FOREIGN KEY(pedido) REFERENCES pedido(codigo),-- Define pedido como Chave Estrangeira
    FOREIGN KEY(curso) REFERENCES curso(codigo)	  -- Define curso como Chave Estrangeira
    -- CONSTRAINT fk_pedido_detalhe_pedido FOREIGN KEY(pedido) REFERENCES pedido(codigo),
    -- CONSTRAINT fk_pedido_detalhe_curso FOREIGN KEY(curso) REFERENCES curso(codigo)
)


