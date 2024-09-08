#Regra 9 - Regra de atualização de visões

SELECT * FROM lanchonete_2d_2024.produto;

create view vi_controleProduto as(
select codProduto, nome as "Nome do Produto", format(precoCusto,2) as "Preço de custo", format(precoVenda,2) as "Preço de venda"
from produto);

select * from vi_controleProduto;

#atualizar por meio da view
update vi_controleProduto set precoCusto = 6.00 where codProduto=4;



