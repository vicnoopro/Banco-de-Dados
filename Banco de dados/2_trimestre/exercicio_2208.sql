select * from produto; #

select * from cliente;

select * from funconario;
select * from cargo;

select* from venda;
select * from itensvenda;

select p.nome, p.precoVenda as "Preço de venda", iv.venda_codVenda, iv.quantVenda as "Quantidade Vendida" from produto as p inner join itensVenda as iV on p.codProduto = iV.produto_codProduto;

