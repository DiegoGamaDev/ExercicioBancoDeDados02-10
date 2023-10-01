
-- Criação da Tabela produtos e suas colunas
Create Table Produtos (
id_produto int auto_increment primary key,
nome varchar(50) not null,
preco decimal (5,2) not null,
estoque int not null,
perecivel boolean not null,
marca varchar(50),
nacionalidade varchar(50)
);

-- Inserção de dados na tabela
insert into produtos (nome,preco,estoque,perecivel,marca,nacionalidade) values ("Arroz Dugtrio", 4.75, 12, false, "Dugtrio", "Brasileiro");
insert into produtos (nome,preco,estoque,perecivel,marca,nacionalidade) values ("Feijao Pikachu", 6.25, 10, false, "Pikachu", "Brasileiro");
insert into produtos (nome,preco,estoque,perecivel,marca,nacionalidade) values ("Ovo Chansey", 12.99, 25, true, "Chansey", "Japones");
insert into produtos (nome,preco,estoque,perecivel,marca,nacionalidade) values ("Nuggets de Peixe Magikarp", 14.50, 18, true, "Magikarp", "Argentino");
insert into produtos (nome,preco,estoque,perecivel,marca,nacionalidade) values ("Tacos Ludicolo", 8.20, 30, true, "Ludicolo", "Mexicano");


SELECT COUNT(id_produto) from produtos; -- Mostrando a quantidade de produtos cadastrados

select avg(preco) AS PRECO_MEDIO from produtos; -- Mostrando o preço médio dos produtos

SELECT AVG(PRECO) AS PRECO_MEDIO FROM PRODUTOS WHERE PERECIVEL=TRUE; -- Mostrando a média dos preços de pereciveis e não pereciveis
SELECT AVG(PRECO) AS PRECO_MEDIO FROM PRODUTOS WHERE PERECIVEL=FALSE;

SELECT NOME, AVG (PRECO) AS PRECO_MEDIO FROM PRODUTOS GROUP BY NOME; -- Selecçao de preço médio agrupado pelo nome dos produtos

SELECT AVG (PRECO) AS PRECO_MEDIO, sum(ESTOQUE) as soma_estoque FROM PRODUTOS ; -- Selecionando a média de preço e soma de estoque dos produtos

SELECT NOME,MARCA,ESTOQUE FROM PRODUTOS HAVING MAX(PRECO); -- Selecionando o nome, marca e quantidade em estoque do produto de maior preço

SELECT * FROM PRODUTOS WHERE PRECO > (SELECT AVG(PRECO) FROM PRODUTOS); -- Selecionando os produtos com preço acima da média

SELECT NACIONALIDADE, COUNT(NACIONALIDADE) AS QUANTIDADE FROM PRODUTOS GROUP BY NACIONALIDADE; -- Selecionando produtos de cada nacionalidade


