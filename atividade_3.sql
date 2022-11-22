
create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
	id bigint auto_increment,
	nome varchar (100) not null,
    ativo boolean,
    primary key (id)
);

INSERT INTO tb_categorias(nome, ativo) 
VALUES ("Nick", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("FatalSort", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("H&M", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Zara", true);

INSERT INTO tb_categorias(nome, ativo) 
VALUES ("Louis Vuitton", true);

INSERT INTO tb_categorias(nome, ativo) 
VALUES ("Adidas", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Uniqlo", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Hermés", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Rolex", true);

INSERT INTO tb_categorias(nome, ativo) 
VALUES ("Gucci", true);

select * from tb_categorias;

use db_construindo_vidas;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100),
descricao VARCHAR(200),
preco DECIMAL(8, 2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Tenis", "Tenis brancos", 400, 1);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Mochila", "Mochila prova da Água", 100, 2);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Camisola", "Algudão ", 34, 3);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Vestido", "Vestido para vesta", 800, 4);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Sapato", "Couro",  200, 5);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Boné", "Vermelho", 66, 1);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)   
VALUES ("Tenis", "Couro", 150, 2);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)   
VALUES ("SmartWhatch", "Medir precão", 350, 1);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Calsas ", "Azul", 90, 2);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Meias", "Brancos", 34, 3);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Vestido", "preto", 420, 4);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Sapato", "cano alto",  210, 5);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Boné", "Preto", 55, 1);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)  
VALUES ("Tenis", "Preto", 99, 2);


-- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 50,00.
select * from tb_produtos where preco > 100;

-- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 40,00 e R$ 70,00.
select * from tb_produtos where preco between  100 and 400;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_produtos where nome like "%T%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id
where tb_produtos.nome like "%Tenis";

select * from tb_produtos;