CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_categorias (

	id bigint auto_increment primary key,
	tipo varchar (255),
	sustentavel boolean
    
);


CREATE TABLE tb_usuario (
	id bigint auto_increment primary key,
    nome varchar (255),
    usuario varchar (255),
    senha varchar (255),
    foto varchar(255)

);


CREATE TABLE tb_produtos (
	id bigint auto_increment primary key,
    nome varchar (255),
    quantidade int,
    descricao varchar(255),
    preco decimal (8,2),
    foto varchar(255),
    usuario_id bigint,
    tema_id bigint,

    FOREIGN KEY (usuario_id) REFERENCES tb_usuario(id),
    FOREIGN KEY (tema_id) REFERENCES tb_categorias(id)
    
);

INSERT INTO  tb_categorias (tipo, sustentavel) VALUES ("Artesanato",true);
INSERT INTO  tb_categorias (tipo, sustentavel) VALUES ("Artesanato",false);
INSERT INTO  tb_categorias (tipo, sustentavel) VALUES ("Vestuário",true);
INSERT INTO  tb_categorias (tipo, sustentavel) VALUES ("Vestuário",false);
INSERT INTO  tb_categorias (tipo, sustentavel) VALUES ("Cosmético",true);
INSERT INTO  tb_categorias (tipo, sustentavel) VALUES ("Cosmético",false);


INSERT INTO  tb_usuario (nome, usuario, senha, foto) VALUES ("Flavio","flavio11","1234","##");


INSERT INTO  tb_produtos (nome, quantidade, descricao, preco, foto, usuario_id, tema_id) VALUES ("Bota de Trekking", 5, "Bota impermeável, Unisex, TAM 34 a 42, Sola intermédiaria em espuma EVA", 279.90, "##", 1, 4);



SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.tema_id;

SELECT * FROM tb_produtos INNER JOIN tb_usuario ON tb_usuario.id = tb_produtos.usuario_id;