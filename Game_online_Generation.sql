CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
    descricao VARCHAR (255) NOT NULL
);

INSERT INTO tb_classes (classe, descricao) VALUES ("Guerreiro", "Especializado em combate corpo a corpo, com grande força física.");
INSERT INTO tb_classes (classe, descricao) VALUES ("Mago", "Utiliza magia para causar dano à distância.");
INSERT INTO tb_classes (classe, descricao) VALUES ("Arqueiro", "Ataca à distância com alta precisão e velocidade.");
INSERT INTO tb_classes (classe, descricao) VALUES ("Curandeiro", "Os curadores são responsáveis por curar os membros do grupo");
INSERT INTO tb_classes (classe, descricao) VALUES ("Druida", "São combatentes versáteis e atuam nas demais funções: 
curador, tanque ou causador de danos.");


CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    personagem VARCHAR(50) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    classe_id BIGINT,
   FOREIGN KEY (classe_id) REFERENCES tb_classes(id) 
);

INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("Darkzin", 2100, 3000, 1);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("Eloyn", 1800, 4000, 4);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("Semxôro", 4000, 2000, 3);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("EleoMago", 5000, 2800, 2);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("Lord", 3400, 2000, 1);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("Folha", 4500, 3900, 5);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("CuraTudo", 1000, 850, 4);
INSERT INTO tb_personagens (personagem, ataque, defesa, classe_id) VALUES ("MrGreen", 1500, 1050, 3);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE personagem LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.classe = 'Druida';
