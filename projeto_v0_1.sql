CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_categorias (

	id bigint auto_increment primary key,
	artesanato varchar (255),
    vestuario varchar(255),
    cosmeticos varchar(255)
    
);


CREATE TABLE tb_usuario (
	id bigint auto_increment primary key,
    nome varchar (255),
    usuario varchar (255),
    senha varchar (255),
    foto varchar(255),
    classe_id bigint

);


CREATE TABLE tb_produtos (
	id bigint auto_increment primary key,
    nome varchar (255),
    quantidade int,
    descricao varchar(255),
    preco decimal (8,2),
    foto varchar(255),
    classe_id bigint,

    FOREIGN KEY (usuario_id) REFERENCES tb_usuario(id),
    FOREIGN KEY (tema_id) REFERENCES tb_categorias(id)
    
);




SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.tema_id;

SELECT * FROM tb_produtos INNER JOIN tb_usuario ON tb_usuario.id = tb_produtos.usuario_id;