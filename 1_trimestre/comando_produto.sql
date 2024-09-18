
desc produto;
#valores obrigátorios: codProduto, nome, precoVenda,marca_codMarca, categoria_codCategoria


select * from marca;
select * from categoria;
select * from produto;

#inserir um produto cadastrando apenas os campos obrigátorios, ou seja,  aqueles que não podem ficar Null
insert into produto(codProduto, nome, precoVenda, marca_codMarca, categoria_codCategoria) values(null, "Coca-Cola", 5.20, 4, 1);
#null para incrementar automatico, nome do produto, preco de venda, 4 e 1 se referem as chaves estrangeiras correspondentes da tabela marca(coca cola) e categoria(refrigerante)

#uniu a tabela produto com a tabela categoria e mostrando apenas campos específicos
select produto.nome, produto.precoVenda, categoria.nome from produto inner join categoria on produto.categoria_codCategoria = categoria.codCategoria;