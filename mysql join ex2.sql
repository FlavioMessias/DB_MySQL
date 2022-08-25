CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (

	id bigint auto_increment primary key,
	descricao varchar (255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas (
	id bigint auto_increment primary key,
    sabor varchar (255),
    preco decimal (6,2),
    massa varchar (255),
    quantidade int,
    categoria_id bigint,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Salgada", "Broto", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Salgada", "Broto", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Salgada", "Grande", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Salgada", "Grande", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Doce", "Brotinho", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Doce", "Grande", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Vegetariana", "Grande", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Vegetariana", "Grande", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Vegetariana", "Brotinho", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Vegetariana", "Brotinho", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Vegana", "Grande", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada)VALUES("Vegana", "Brotinho", false);


INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Frango c/ Catupiry", 50.99, "tradicional", 5, 3);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Prestígio", 50.99, "tradicional", 10, 5);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Lombo c/ Catupiry", 65.99, "tradicional", 3, 4);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Brocolis c/ Catupiry", 40.99, "tradicional", 5, 10);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Baiana", 45.99, "tradicional", 5, 1);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Calabresa", 30.99, "tradicional", 15, 2);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Frango c/ Catupiry", 40.99, "tradicional", 10, 2);
INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id)VALUES("Lombo c/ Catupiry", 45.99, "tradicional", 12, 2);


SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45; 
SELECT * FROM tb_pizzas WHERE preco < 45;
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas WHERE sabor LIKE "%ca%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas tp INNER JOIN tb_categorias tc ON tp.categoria_id  = tc.id WHERE tc.descricao = "Doce" AND tp.categoria_id IN (5,6);


