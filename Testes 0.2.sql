USE random_sql;

CREATE TABLE alimentos
(
	id int unsigned not null auto_increment,
    alimento varchar(50) not null,
    caloria float not null default'0',
    carboidrato float not null default'0',
    proteina float not null default'0',
    gordura float not null default'0',
    PRIMARY KEY(id)
);

INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Maça', 79.5, 22.8, 0.45, 0);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Arroz', 32, 7.03, 0.63, 0.05);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Água', 0, 0, 0, 0);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Canela', 6.79, 2.08, 0.1, 0.08);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Tomate', 7.5, 1.55, 0.55, 0.1);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Hambúrguer bovino', 94.08, 1.59, 10.6, 5.04);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Peito de frango', 163, 0, 31.5, 3.2);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Melancia', 66, 16.2, 1.8, 0);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Bolo de chocolate', 246, 32.82, 3.72, 11.1);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Ovo de codorna', 15.8, 0.04, 1.31, 1.11);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Banana prata', 39.6, 9.12, 0.52, 0.12);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Feijão', 12.92, 2.31, 0.82, 0.09);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Coca-cola', 70.13, 17.33, 0, 0);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Berinjela', 4.75, 1.13, 0.18, 0);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Pamonha', 273.6, 49.12, 4.16, 7.68);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Milho verde', 13.72, 2.39, 0.45, 0.34);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Uva rubi', 171.5, 44.45, 2.1, 0.7);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Chocolate kitkat', 229.95, 27.35, 3.2, 11.97);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Abacate', 412.8, 25.8, 5.16, 51.6);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Macarrão', 173.8, 33.95, 6.38, 1.02);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Suco de laranja', 54.45, 12.54, 1.16, 0.17);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Alface', 1.9, 0.29, 0.13, 0.02);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Morango', 3.6, 0.82, 0.11, 0.04);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Salsicha', 120, 2, 8, 9);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Nescau', 37.5, 8.5, 0.35, 0.3);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Pão francês', 150, 29.3, 4, 1.55);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Abacaxi', 36, 9.23, 0.68, 0.08);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Leite condensado', 46.95, 8.55, 1.16, 1.02);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Sushi de salmão', 26.7, 5.01, 1.44, 0.12);
INSERT INTO alimentos(alimento, caloria, carboidrato, proteina, gordura) VALUES ('Cenoura', 20, 3.4, 1.9, 0.4);


SELECT alimento AS 'Alimento', caloria AS 'Calorias(Kcal)', carboidrato AS 'Carboidratos(g)', proteina AS 'Proteinas(g)', gordura AS 'Gorduras Totais(g)' FROM alimentos WHERE alimento = 'Pamonha';