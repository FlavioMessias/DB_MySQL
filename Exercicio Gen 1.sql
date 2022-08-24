CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores (
	id bigint auto_increment primary key,
    nome varchar(255),
    armario int,
    setor varchar(255),
    salario decimal (8,2)
);

INSERT INTO tb_colaboradores (nome,armario,setor,salario)VALUES("Flavio", 84, "TI", 9000.00);
INSERT INTO tb_colaboradores (nome,armario,setor,salario)VALUES("Vitor", 22, "RH", 1900.00);	
INSERT INTO tb_colaboradores (nome,armario,setor,salario)VALUES("José", 49, "Relações comerciais", 7000.00);	
INSERT INTO tb_colaboradores (nome,armario,setor,salario)VALUES("Julia", 11, "Diretoria", 8000.00);	
INSERT INTO tb_colaboradores (nome,armario,setor,salario)VALUES("Isabela", 27, "Marketing", 1950.00);	

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 5000.00 WHERE ID=5;


	