USE softblue_sql;

SHOW ENGINES;

CREATE TABLE conta_bancaria
(
	codigo int unsigned not null auto_increment,
    titular varchar(32) not null,
    saldo double not null,
    PRIMARY KEY(codigo)
) engine = InnoDB;

INSERT INTO conta_bancaria VALUES (1, 'André', 213);
INSERT INTO conta_bancaria VALUES (2, 'Diogo', 489);
INSERT INTO conta_bancaria VALUES (3, 'Rafael', 568);
INSERT INTO conta_bancaria VALUES (4, 'Carlos', 712);
INSERT INTO conta_bancaria VALUES (5, 'Peter', -38);

SELECT * FROM conta_bancaria;

SET SQL_SAFE_UPDATES = 0;

START TRANSACTION;
UPDATE conta_bancaria SET saldo = ROUND(saldo + (saldo / 100 * 3), 2) WHERE saldo > 0;
ROLLBACK;
COMMIT;