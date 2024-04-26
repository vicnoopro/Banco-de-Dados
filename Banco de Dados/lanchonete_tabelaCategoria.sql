#mostra a estrutura da tebela categoria
describe categoria;

#insere uma categoria preenchendo todos os campos
#A palavra null foi usada pq o CodCategoria é auto-incremento
insert into categoria values (null, "Refrigerante");

#insere um valor dentro do campo "nome" 
insert into categoria (nome) values ("Salgados");

select * from categoria;
