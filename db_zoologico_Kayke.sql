-- 1. Criar Banco de Dados Zoologico
	
	create database dbzoologico;

-- 2. Criar Tabela Com o Nome Animais
	
	create table Tbanimais(

	codigo int,
	tipo char(15),
	nome char(30),
	idade int,
	valor decimal(10,2)
);


-- Inserindo os valores na Tabela Zoologico

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(1,'cachorro','Djudi',3,300.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(2,'cachorro','Sula',5,300.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(3,'cachorro','Sarina',7,300.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(4,'gato','Pipa',2,500.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(5,'gato','Sarangue',2,500.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(6,'gato','Clarences',1,500.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(7,'coruja','Agnes',0,700.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(8,'coruja','Arabela',1,700.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(9,'Sapo','Quash',1,100.00);

	insert into Tbanimais(codigo,tipo,nome,idade,valor)
		values(10,'Peixe','Fish',0,100.00);







-- 3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS.

	select * from dbzoologico;

-- 4. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS 
	
	select tipo,nome from dbzoologico;

-- 5. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
	
	select tipo,nome,idade from dbzoologico;

-- 6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros Apresente a legenda da coluna TIPO com o alias [Tipo de Animal] e a coluna nome com o alias [Nome do Animal]. 
	select tipo,nome from dbzoologico;
	select tipo as 'Tipo de Animal' , nome as 'Nome do Animal' from dbzoologico;

-- 7. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna IDADE com o alias [Tempo de Vida].

	select tipo,nome,idade from dbzoologico;
	select tipo as 'Tipo de Animal' , nome as 'Nome do Animal' , idade as 'Tempo de Vida' from dbzoologico;

-- 8. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:
	
	select tipo as 'Animais Domesticos' as Procedências,Tipo,Nome,Tempo de Vida from dbzoologico;

-- 9. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:

	select Tipo,Nome,Idade,uptade dbzoologico set Valor Original = valor * 1.10 as Valor de Venda from dbzoologico
	where tipo = 'valor';

-- 10. Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir,apresentando uma vez os dados repetidos. 
	select tipo,uptade dbzoologico set Valor Original = valor * 1.10 as Valor de Venda from dbzoologico
	where tipo = 'valor';
