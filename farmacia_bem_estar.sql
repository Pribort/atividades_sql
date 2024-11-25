CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
   tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
("Medicamentos", "Medicamentos, cuidado e remédio controlados"),
("Cosméticos", "Produtos para cuidados estéticos e beleza."),
("Suplementos", "Produtos nutricionais."),
("Higiene", "Produtos para cuidados diários e higiene pessoal."),
("Infantil", "Produtos específicos para cuidados de crianças.");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_produtos (produto, descricao, preco, estoque, categoria_id) VALUES
("Paracetamol", "Medicamento para febre e dor.", 15.50, 100, 1),
("Condicionador", "Produto para cuidados com os cabelos.", 26.00, 250, 2),
("Omega 3", "Suplementação diária", 160.00, 30, 3),
("Creme Hidratante", "Hidratação intensa para pele.", 35.00, 40, 2),
("Fralda Infantil", "Fraldas descartáveis para bebês.", 129.00, 200, 5),
("Vitamina C", "Suplemento vitamínico para imunidade.", 60.00, 80, 3),
("Sabonete Líquido", "Produto de higiene para as mãos.", 18.99, 150, 4),
("Absorvente íntimo", "Absorvente ciclo menstrual", 8.90, 60, 4);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_categorias.id = tb_produtos.categoria_id WHERE tb_categorias.tipo = 'Cosmeticos';
