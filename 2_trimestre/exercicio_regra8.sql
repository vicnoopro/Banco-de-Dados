/*Exercício 1: Criar uma tabela virtual (uma visão) dos dados dos cargos mostrando apenas o nome de cada um e o salário inicial. 
O resultado deve estar em ordem decrescente pelo salário.*/

desc funconario;
desc cargo;
create view vi_cargoSalarioDecrescente as(
select nome, salarioInicial  from cargo order by salarioInicial desc);

select * from vi_cargoSalarioDecrescente;

/*Exercício 2: Na Lanchonete, já estamos gerenciando os produtos. Crie uma tabela virtual que funcione como um cardápio
 mostrando apenas o nome de cada produto, seu preço de venda, o nome da marca bem como o nome da categoria. 
 Sugestão de nome: vi_cardapio*/
 
 desc produto;
 desc marca;
 desc categoria;
 
 create view vi_cardapioCompleto as (
select p.nome as "nomeProduto",format(p.precoVenda,2) as precoVenda,
m.nome as "nomeMarca",c.nome as "Categoria" 
from produto as p inner join marca as m  
inner join categoria as c 
on p.marca_codMarca = m.codMarca 
and p.categoria_codCategoria=c.codCategoria
);

select * from vi_cardapioCompleto;