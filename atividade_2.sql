


create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;


create table tb_categorias(
	id bigint auto_increment,
	nome varchar (100) not null,
    ativo boolean,
    primary key (id)
);

INSERT INTO tb_categorias(nome, ativo) 
VALUES ("Programação", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Idiomas", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Gestão", true);

INSERT INTO tb_categorias(nome, ativo)  
VALUES ("Ferramentas de escritório", true);

INSERT INTO tb_categorias(nome, ativo) 
VALUES ("Marketing", true);

select * from tb_categorias;

use db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100),
descricao VARCHAR(200),
turno VARCHAR(50),
preco DECIMAL(8, 2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id)  
VALUES ("Java iniciante", "curso básico", "noturno", 40, 1);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id)
VALUES ("Inglês básico", "curso introdutório", "noturno", 44, 2);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id)
VALUES ("Metodologia SCRUM", "metodologia ágil", "matutino", 34, 3);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id) 
VALUES ("Pacote office", "básico do office", "matutino", 42, 4);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id)
VALUES ("Vendas", "melhorar vendas", "noturno", 60, 5);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id)
VALUES ("Javascript iniciante", "curso básico", "vespertino", 66, 1);

INSERT INTO tb_cursos(nome, descricao, turno, preco, categoria_id) 
VALUES ("Espanhol básico", "curso introdutório", "integral", 70, 2);


-- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 50,00.
select * from tb_cursos where preco > 50;

-- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 40,00 e R$ 70,00.
select * from tb_cursos where preco between  40 and 70;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_cursos where nome like "%j%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
select * from tb_cursos inner join tb_categorias on tb_cursos.categoria_id = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
select * from tb_cursos inner join tb_categorias on tb_cursos.categoria_id = tb_categorias.id
where tb_cursos.nome like "%java%";

select * from tb_cursos;