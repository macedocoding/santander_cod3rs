-- Comandos
	-- min, max, count, sum, avg
	-- group by, order by e having
	-- inner join, left join, right join

-- exemplo de having
	-- SELECT valor_unitario,
        --	COUNT(*)
	-- FROM tb_estoque
	-- GROUP BY 1
	-- HAVING COUNT(*) > 2;	



/*Estrutura do database bd_papelaria*/
-- CREATE DATABASE bd_papelaria;

/*Estrutura da tabela tb_estoque*/

DROP TABLE IF EXISTS tb_estoque CASCADE;
DROP TABLE IF EXISTS tb_produto;

CREATE TABLE tb_estoque (
	id SERIAL,
	qtde INT,
	valor_unitario DECIMAL(9,2),
	PRIMARY KEY (id)
);

/*Inserindo 20 registros na tabela tb_estoque*/

INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (20, '1.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (60, '1.50');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '5.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '10.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '8.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (70, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '17.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (40, '5.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (40, '4.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (20, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '7.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (120, '8.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '6.00');


/*Estrutura da tabela tb_produto*/
CREATE TABLE tb_produto (
	id SERIAL,
	status CHAR(1) NOT NULL DEFAULT 'A',
	descricao VARCHAR(50),
	estoque_minimo INT,
	estoque_maximo INT,
	id_estoque INT,
	PRIMARY KEY (id),
	FOREIGN KEY (id_estoque) REFERENCES tb_estoque(id)
);

/*Inserindo 20 registros na tabela tb_produto
Campo "status" indica se o cadastro está ativo “A” ou inativo “I”*/
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (1, 'A', 'Lapis', 10, 20);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (1, 'A', 'Lapis de cor', 12, 60);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (1, 'A', 'Lapis de cera', 12, 50);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (2, 'A', 'Marcadores',10, 50);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (2, 'A', 'Esferograficas (azul, vermelha, preta e verde)', 7, 30);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (2, 'A', 'Etiqueta', 8, 100);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (3, 'A', 'Borracha', 20, 70);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (3, 'A', 'Caderno pautado', 30, 50);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (4, 'A', 'Caderno quadriculado', 30, 50);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (4, 'A', 'Caderno de musica', 16, 50);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (5, 'A', 'Calculadora', 20, 30);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (6, 'A', 'Regua de 20 cm', 13, 40);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (7, 'I', 'Compasso',    8, 40);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (8, 'I', 'Giz de cera', 9, 30);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (9, 'I', 'Tesoura', 11, 20);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (10, 'I', 'Estojo',    21, 100);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (11, 'I', 'Papel Manteiga',    15, 50);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (12, 'I', 'Mochila', 6, 100);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (13, 'I', 'T-shirt', 25, 120);
INSERT INTO tb_produto(id_estoque, status,descricao,estoque_minimo,estoque_maximo) VALUES (14, 'I', 'Corretivo', 16, 30);
