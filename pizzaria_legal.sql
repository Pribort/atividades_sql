CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR (255) NOT NULL
);

CREATE TABLE tb_pizza(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    categoria_id BIGINT,
   FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id) 
);


INSERT INTO tb_categorias (tipo, descricao) VALUES ("Salgada", "Uso de ingredientes salgados e de origem animal");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Doce", "Recheios doces");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Esfirra", "Opção salgada apenas");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Calzone", "Pizza dobrada salgada"); 
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Vegana", "Não contém origem animal");

INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Quatro Queijos", 62.90 ,"Grande",1);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Queijo", 5.99 ," ",3);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Toscana", 68.99 ,"Grande",1);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Frango com Requeijão", 58.99 ,"Grande",4);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Leite Ninho com Nutella", 48.99 ,"Broto",2);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Brócolis", 28.99 ,"Broto",5);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Toscana", 9.00 ," ",3);
INSERT INTO tb_pizza (sabor, preco, tamanho, categoria_id)
VALUES ("Banana Caramelizada", 68.99 ,"Grande",2);

SELECT * FROM tb_pizza;
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizza WHERE preco > 40.00;

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE sabor LIKE '%M%';

SELECT * FROM tb_pizza INNER JOIN tb_categorias
on tb_categorias.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza INNER JOIN tb_categorias
on tb_categorias.id = tb_pizza.categoria_id WHERE tb_categorias.tipo = 'Doce';