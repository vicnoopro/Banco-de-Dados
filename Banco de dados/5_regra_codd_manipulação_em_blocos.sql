#5° regra de codd: inserção, exclusão e alteração em blocos

#relembrando o conteúdo das tabelas
select * from marca;
select * from categoria;
select * from produto;

desc produto;

#exemplo da regra 5, inserindo varios produtos no mesmo comando/bloco
insert into produto(nome, precoVenda, marca_codMarca, categoria_codCategoria) values ("Cheetos", 5.50, 6, 5),("Fandangos", 4.90, 6, 5),("Doritos", 6.50, 6, 5);

#exemplo da regra 5, alterando para letras maiusculas os nomes dos produtos de determinada marca
update produto set nome=ucase(nome) where marca_codMarca = 6;




