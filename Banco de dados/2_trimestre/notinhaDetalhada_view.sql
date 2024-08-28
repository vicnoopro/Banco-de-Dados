select * from produto; 

select * from cliente;

select * from funconario;
select * from cargo;

select* from venda;
select * from itensvenda;

create view vi_notinha as (
select iv.venda_codVenda, p.nome, iv.quantVenda as "Quantidade Vendida", format(p.precoVenda,2) as "Preço de venda", format(iv.quantVenda * p.precoVenda,2) as "Valor a ser pago" from produto as p 
inner join itensVenda as iV on p.codProduto = iV.produto_codProduto);

select * from vi_notinha;


select v.codVenda, c.nomeCliente, v.tipoPagamento from venda as v inner join
inner join produto as p,
 cliente as c on v.cliente_codCliente= c.codCliente;



