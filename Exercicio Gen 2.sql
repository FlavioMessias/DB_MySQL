CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
	id bigint auto_increment primary key,
    nome varchar(255),
    quantidade int,
    setor varchar(255),
    valor decimal (8,2)
);

INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Whey Protein Isolado", 100, "Proteina", 550.00);
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Aveia em flocos", 500, "Alimenticios", 18.00);	
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Carnivor", 49, "Proteina", 700.00);	
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Creatina", 150, "Outros", 120.00);	
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Whey Protein Concentrado", 122, "Proteina", 230.00);	
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Pré Treino", 49, "Outros", 510.00);	
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Maltodextrina", 200, "Outros", 30.00);	
INSERT INTO tb_produtos (nome,quantidade,setor,valor)VALUES("Creme de amendoim", 27, "Alimenticios", 50.00);	


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500.00;

SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET valor = 490.00 WHERE ID=6;


