CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (

	id bigint auto_increment primary key,
	magico varchar (255),
    fisico varchar(255)
    
);

CREATE TABLE tb_personagens (
	id bigint auto_increment primary key,
    nome varchar (255),
    forca int,
    destreza int,
    inteligencia int,
    vitalidade int,
    ataque decimal,
    defesa decimal,
    classe_id bigint,

    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);


INSERT INTO tb_classes (magico, fisico)VALUES("Raio", "Lança");
INSERT INTO tb_classes (magico, fisico)VALUES("Fogo", "Machado");
INSERT INTO tb_classes (magico, fisico)VALUES("Terra", "Martelo");
INSERT INTO tb_classes (magico, fisico)VALUES("Agua", "Espada");
INSERT INTO tb_classes (magico, fisico)VALUES("Ar", "Arco e flecha");



INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Paladino", 13, 10, 10, 9, 1800.00, 2500.00, 3);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Guerreiro", 15, 12, 8, 8, 2700.00, 1900.00, 1);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Barbaro", 18, 7, 6, 9, 2800.00, 1500.00, 2);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Ranger", 9, 17, 10, 8, 3000.00, 1000.00, 5);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Caçador", 10, 15, 12, 9, 2700.00, 1300.00, 5);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Cavaleiro", 12, 12, 7, 10, 1700.00, 2700.00, 4);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Templário", 14, 10, 8, 9, 1500.00, 3000.00, 3);
INSERT INTO tb_personagens (nome, forca, destreza, inteligencia, vitalidade, ataque, defesa, classe_id)VALUES("Ladino", 12, 15, 10, 11, 2200.00, 2300.00, 1);



SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE ataque > 2000.00; 
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";


SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes WHERE tb_classes.id = 5 AND tb_personagens.classe_id = 5;