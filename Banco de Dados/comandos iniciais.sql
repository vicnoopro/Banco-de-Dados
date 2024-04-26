#serve para mostrar as tabelas do BD selecionado
show tables;

#Descreve a tabela 'marca'
desc marca;

#Insere uma marca preenchendo apenas o seu NOME
insert into marca(nome) values("Batavo");

#Insere uma marca preenchendo TODOS os campos
insert into marca values(null, "Coca-Cola");

#seleciona todos os dados da tabela 'marca'
select * from marca;

#selecionar as marcas que possuem a letra C no ínicio do nome

#Seleciona todas as opções dentro de 'marca' que iniciam com a letra 'C' 
select * from marca Where nome like 'C%';

#Seleciona todas as opções dentro de 'marca' que possuam 'C' em qualquer posição do nome
select * from marca Where nome like '%C%';

#Seleciona todas as opções dentro de 'marca' que terminam com a letra 'A' 
select * from marca Where nome like '%A';

#Serve para mostrar a opção em que a chave primária é 3 
select * from marca where codMarca = 3;

#Serve para mostrar a opção em que a chave primária é 1 ou 2
select * from marca where codMarca = 1 or codMarca = 2;

#Serve para mostrar a opção em que a chave primária é 4 ou 9(mas em conjunto numerico substituindo o "or")
select * from marca where codMarca in(4, 9);

#Serve para mostrar a opção em que a chave primária NÃO é nem 5, nem 11
select * from marca where codMarca not in(5, 11);

#Mostra todas as opções em que a chave primária é diferente de 4
select * from marca where codMarca != 4;

#Mostra todas as opções em que a chave primária é maior que 6
select * from marca where codMarca > 6;

#Mostra todas as opções em que a chave primária é menor que 8
select * from marca where codMarca > 8;

#Selecionar apenas os nomes das marcas em ordem alfabetica decrescente

#Tira o * para não mostrar a chave primária e order by desc para ordenar de forma decrescente
select nome from marca order by nome desc;

#Tira o * para não mostrar a chave primária e order by asc para ordenar de forma crescente
select nome from marca order by nome asc;

#Apagar algumas marcas esprcíficas

#Apaga nomes em que a pk é maior que 16
delete from marca where codmarca > 16; 

#Apaga nomes em que a pk é um dos valores escolhidos
delete from marca where codmarca in (12, 14, 17, 22); 

#Atualiza o nome da marca dentro da chave desejada
update marca set nome="Fleischman" where codMarca = 16; 

#Serve para ordenar as chaves primárias, onde era 46 agora é 17
update marca set codMarca = 17 where codMarca = 46;
select * from marca;





