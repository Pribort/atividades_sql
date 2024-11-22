CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT,
aluno VARCHAR(50) NOT NULL,
idade INT NOT NULL,
turma VARCHAR(100) NOT NULL,
nota DECIMAL(10,2) NOT NULL,
matricula INT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Carlos Eduardo Nogueira", 10, "5D", 8.9, 225546);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Laura Silva ", 9, "4A", 10.0, 225897);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Juliana Gonçauves", 7, "2B", 9.8, 225473);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Lucas Lima", 15, "8C", 4.8, 225862);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Gabriela Lima", 15, "8E", 6.0, 225888);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Diana Rodrigues", 6, "1A", 7.0, 225820);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Lurdes Santos", 13, "7F", 3.8, 225880);
INSERT INTO tb_estudantes (aluno, idade, turma, nota, matricula) values ("Louise", 15, "8C", 8.0, 225860);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota >= 7.00;

SELECT * FROM tb_estudantes WHERE nota <= 7.00;

UPDATE tb_estudantes SET nota = 8.00 where id = 6;


