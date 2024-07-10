#comandos DML no projeto da autoescola (select, insert, update e delete)#

#mostrar as tabelas
show tables;

#mostra a estrutura da tabela marca
desc marca;

#insere um nome dentro de marca
insert into marca(nome) values ("Volkswagen");

#insere a chave primaria e um nome dentro de marca
insert into marca(codMarca, nome) values (null, "Fiat");

#insere a chave primária, um nome e uma característica dentro de marca
insert into marca values (null, "Ford", "Fabricante estadunidense de automóveis");

#Atualiza as caracteristicas dentro de marca onde a pk é 2;
update marca set caracteristicas="Fabricante italiana de automóveis" where codMarca=2;

#mostra apenas as marcas que possuam 'A' em alguma parte do nome
select * from marca Where nome like '%A%';

#mostra apenas as marcas que possuem caracteristicas nulas
select * from marca where caracteristicas is null;

#mostra apenas as marcas que possuem caracteristicas NÃO nulas
select * from marca where caracteristicas is not null;

#mostra o nome das marcas em ordem decrescente
select nome from marca order by nome desc;

#mostra o nome das marcas em ordem crescente
select nome from marca order by nome asc;

#insere e deleta
insert into marca (nome) values ("Ferrari");
delete from marca where codMarca = 4;

#Mostra o conteúdo de marca
select * from marca;

#################################Manipulação da tabela carro

desc carro;

insert into carro values (null, "Gol", "A1B2C3", 2015, 1);
insert into carro values (null, "Uno", "C2D4J7", 2012, 2);
insert into carro values (null, "KA", "D7K8B6", 2018, 3);

#Mostrar o nome de cada carro, ano e o nome da marca
select c.modelo, c.anoFabricacao, m.nome from marca as m inner join carro as c on m.codMarca = c.marca_codMarca;

select * from carro;
