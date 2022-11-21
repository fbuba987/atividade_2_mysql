use db_generation_game_online;

-- Cria a tabela Usuários
CREATE TABLE tb_personagens (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  jogo	VARCHAR(255) NOT NULL,
  armadura VARCHAR(255) ,
  poder_de_ataque int (255) not null,
  classes_id BIGINT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
  );

-- Insere dados na tabela Usuários
INSERT INTO tb_personagens (nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Gimble", "Dungeons & Dragons 3ª Edição", " Malha/Média ", "500", 1);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Volothamp", "Forgotten Realms", "Tecido ", "5000", 2);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Zandess Danthiir", "Forgotten Realms", " Malha/Média ", "3000", 3);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Isteval", "Forgotten Realms", "Escudos", "2000", 4);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id)  
VALUES ("Devis", "Dungeons & Dragons 3ª Edição", "Malha/Média", "300", 2);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Bartz Klauser", "Final Fantasy V", "Escudos", "400", 1);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Luigi Sortudo", "Dragão Brasil e Tormenta RPG", "Couro/Leve", "4000", 3);

INSERT INTO tb_personagens(nome, jogo, armadura, poder_de_ataque, classes_id) 
VALUES ("Leliana", "Dragon Age", "Tecido", "8000", 4);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens where poder_de_ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens where poder_de_ataque between 1000 and 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra B no atributo nome.
SELECT * FROM tb_personagens where nome like "%b%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id;


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: 
-- Todes os personagens da classe dos arqueiros).
SELECT * FROM tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id
where  tb_classes.cavaleiro like "%Barbaro%";

