create database dbprodutos;

create table produtos(
    codigo int,
    nome varchar(50),
    tipo varchar(25),
    quantidade int,
    valor decimal(10,2)
);

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD 
PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 ); 


-- 1. Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F'
    
    update produtos set valor = valor * 1.12 where nome like 'F%';

-- 2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600
    
    update produtos set valor = valor + 50 where valor between 400 and 600;

-- 3. Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque sejam maiores que 300

    update produtos set valor = valor * 0.5 where 'quantidade' or valor >300; 

-- 4. Exiba o produto de CODIGO = 4

    select * from produtos where codigo = 4;

-- 5. Exibir todos os produtos que não tenham a letra 'Y'

    select * from produtos where nome not like '%A%'; 

-- 6. Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 'MA'
    
    select * from produtos where nome like 'MO%', tipo where tipo like 'MA';


--    Laboratorio dia 03/05

-- 1. Escreva uma consulta que exiba os dados da tabela PRODUTOS crescente pelo campo NOME.
    
    select * from produtos order by nome;

-- 2. Escreva uma consulta que exiba o NOME dos produtos ordenado de forma decrescente e o VALOR de forma crescente. 
    
    select * from produtos order by nome desc, valor asc; 

-- 3. Escreva uma consulta que exiba os três produtos mais caros.
    
    select * from produtos order by valor desc limit 3; 

-- 4. Escreva uma consulta que exiba o VALOR do produto mais barato.

    select * from produtos order by valor asc limit 1;






