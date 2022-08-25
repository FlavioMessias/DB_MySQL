CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
descricao varchar(255),
tamanho int,
cor varchar(255)
);
CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
preco decimal(6,2),
especifico varchar(255),
quantidade int,
produto_id bigint,
FOREIGN KEY(produto_id) REFERENCES tb_produtos (id)
);

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(descricao,tamanho,cor) VALUES("Madeira",5,"Marfim");
INSERT INTO tb_produtos(descricao,tamanho,cor) VALUES("Madeira",15,"Vinho");
INSERT INTO tb_produtos(descricao,tamanho,cor) VALUES("Madeira",3,"Canela");
INSERT INTO tb_produtos(descricao,tamanho,cor) VALUES("Gesso",20,"Branco");
INSERT INTO tb_produtos(descricao,tamanho,cor) VALUES("Telha",45,"Caramelo");
INSERT INTO tb_produtos(descricao,tamanho,cor) VALUES("Telha",50,"Rose");

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(200,"Ipe",4,1);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(500,"Eucalipto",3,3);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(160,"Peroba",1,2);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(599.90,"Placa",3,4);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(449.99,"Pó",3,4);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(230.50,"Ceramica",2,5);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(550,"PVC",3,5);
INSERT INTO tb_categorias(preco,especifico,quantidade,produto_id)VALUES(175.80,"Bloco",3,4);

SELECT * FROM tb_categorias WHERE preco <= 200;
SELECT * FROM tb_categorias WHERE preco BETWEEN 250 AND 600;
SELECT * FROM tb_categorias WHERE especifico LIKE "%a%";

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_produtos.id = tb_categorias.produto_id;

SELECT * FROM tb_categorias INNER JOIN tb_produtos WHERE tb_produtos.id = 4 AND tb_categorias.produto_id = 1;


