CREATE DATABASE db_colaboradores;

USE db_colaboradores;


CREATE TABLE tb_funcionarios (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cargo VARCHAR(50) NOT NULL,
departamento VARCHAR(50) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
dataadmissao DATE,
PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios (nome, cargo, departamento, salario, dataadmissao) values ("Claudia Pereira", "Assistente", "Financeiro", 1800.00, "2020-02-13");
INSERT INTO tb_funcionarios (nome, cargo, departamento, salario, dataadmissao) values ("Adriano Costa", "Auxiliar Geral", "Escritório", 1600.00, "2021-12-01");
INSERT INTO tb_funcionarios (nome, cargo, departamento, salario, dataadmissao) values ("Priscila Bortniuk Santos", "Desenvolvedora Junior", "Tecnologia", 4800.00, "2024-03-10");
INSERT INTO tb_funcionarios (nome, cargo, departamento, salario, dataadmissao) values ("Vagner Junior", "Gerente", "RH", 14800.00, "2020-03-11");
INSERT INTO tb_funcionarios (nome, cargo, departamento, salario, dataadmissao) values ("Vanessa Freitas", "Gerente", "Financeiro", 15800.00, "2019-03-11");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

UPDATE tb_funcionarios SET salario = 6000.00 where id = 3;