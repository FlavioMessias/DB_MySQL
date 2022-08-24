CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunes (
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal (4,2)
);

SELECT * FROM tb_alunes;

INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Flavio", "1997-02-20", 57, 9.9);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Vitor", "1998-04-25", 57, 5.0);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("José", "2000-02-24", 57, 7.0);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Julia", "2001-03-18", 57,8.0);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Isabela", "1996-09-29", 57, 5.5);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Milena", "2000-06-07", 57, 7.5);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Jessica", "2000-04-18", 57, 9.5);	
INSERT INTO tb_alunes (nome,data_nascimento,turma,nota)VALUES("Virginia", "2001-09-17", 57, 10);	

SELECT * FROM tb_alunes;

SELECT * FROM tb_alunes WHERE nota > 7;

SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 8.5 WHERE ID=3;

SET SQL_SAFE_UPDATES = 1;


