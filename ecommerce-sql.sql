CREATE DATABASE db_ecommerce;
use db_ecommerce;

CREATE TABLE tb_funcionarios (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
categoria VARCHAR(50) NOT NULL,
descricao VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
PRIMARY KEY(id)
);

RENAME TABLE tb_funcionarios TO tb_boardgames;

INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Death may die", "Terror", "3-8 jogadores", 899.99, "550");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Dixit", "Narração de Histórias", "3-8 jogadores", 229.99, "90");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("The Resistance", "Aventura", "3-5 jogadores", 99.99, "150");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Lords of Ragnarok", "Estratégia", "1-4 jogadores", 759.99, "20");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Descent: Lendas da Escuridão", "Exploração", "4 jogadores", 1059.99, "220");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Magic", "Trading card game", " 2 jogadores", 55.99, "1000");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Chronicles of Crime", "Co-op", "4 jogadores", 100.00, "10");
INSERT INTO tb_boardgames (nome, categoria, descricao, preco, estoque) values ("Jogo Tiranos de Umbreterna", "Fantasia", "2-4 jogadores", 400.99, "50");


SELECT * FROM tb_boardgames;

SELECT * FROM tb_boardgames WHERE preco < 500;

SELECT * FROM tb_boardgames WHERE preco > 500;

UPDATE tb_boardgames SET estoque = 20 WHERE id = 3;