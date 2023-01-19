CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_Classe(
	id BIGINT auto_increment,
    Classe VARCHAR(255),
    Tipo VARCHAR(255),
    
	PRIMARY KEY(id)
);

CREATE TABLE tb_Presonagem(
	id BIGINT AUTO_INCREMENT,
	Personagem VARCHAR(255),
    Ataque INT,
	Defesa INT,
    Mana INT,
    PoderTotal INT,
    categoria_id BIGINT ,
    
	PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_classe(id)
);


INSERT INTO tb_Classe(Classe,Tipo)
VALUES ("Bruxo","Magia");

INSERT INTO tb_Classe(Classe,Tipo)
VALUES ("Guereiro","Forca");

INSERT INTO tb_Classe(Classe,Tipo)
VALUES ("Longa_distancia","Atirador");

SELECT * FROM tb_classe;

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Cavaleiro",3000,1500,500,5000,2);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Mago",500,500,5000,6000,1);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Arqueiro",1000,700,1500,3200,3);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Paladino",3500,1000,500,5500,2);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Lutador",4000,2000,00,6000,2);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Elfo Arqueiro",1300,1000,2500,4800,3);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Feiticeiro",1000,1500,3500,6000,1);

INSERT INTO tb_Presonagem(Personagem, Ataque, Defesa, Mana, PoderTotal, categoria_id)
VALUES ("Curandeiro",100,1500,5000,6600,1);

SELECT * FROM tb_presonagem;

SELECT * FROM tb_presonagem WHERE ataque > 2000;

SELECT * FROM tb_presonagem WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_presonagem
WHERE personagem LIKE '%C%';

SELECT * FROM tb_presonagem
INNER JOIN tb_classe
ON tb_classe.id = tb_presonagem.categoria_id;


SELECT * FROM tb_presonagem
INNER JOIN tb_classe
ON tb_classe.id = tb_presonagem.categoria_id
WHERE tb_classe.id = 3;