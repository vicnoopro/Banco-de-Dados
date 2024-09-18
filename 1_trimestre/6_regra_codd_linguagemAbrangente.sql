#6° regra: Linguagem abrangente de manipulação de dados

#relatório com dados de duas tabelas
#Gerar um relatório estilo cardápio da lanchonete que apresenta o código de cada produto, nome do produto, nome de sua marca e seu preço de venda

select p.codProduto, p.nome as "Nome do produto" , m.nome as "Marca", format(p.precoVenda,2) as "Preço"  
from produto as p inner join marca as m 
on p.marca_codMarca = m.codMarca;

