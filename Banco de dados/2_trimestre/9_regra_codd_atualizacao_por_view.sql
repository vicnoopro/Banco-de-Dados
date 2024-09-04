#Regra 9 - Regra de atualização de visões

SELECT * FROM lanchonete_2d_2024.produto;

create view vi_controleProduto as(
select codProduto, nome as "Nome do Produto", format(precoCusto,2) as "Preço de custo", format(precoVenda,2) as "Preço de venda"
from produto);

select * from vi_controleProduto;

#atualizar por meio da view
update vi_controleProduto set precoCusto = 6.00 where codProduto=4;

#regra 10 - Independência de integridade
/*há restrições de exclusão e atualização de registros (linhas = rows) que já estão em uso por outra tabela. (Integridade referencial)
Um exemplo prático é a tentativa de exclusão de uma marca que está em uso por algum produto no projeto da ‘lanchonete’
Além da integridade referencial, outros tipos devem ser observados como o preenchimento de campos obrigatórios e o relacionamento entre as entidades.*/

#regra 11 - Independência de distribuição
/*Quando o projeto de BD está pronto e com todas as suas configurações, é possível colocá-lo em qualquer computador-servidor
Na tela inicial devemos passar qual o hostname (podendo ser diretamente o IP do computador-servidor) e ajustando o número da porta (se necessário).*/

#regra 12 -  Regra não subversiva
/*diz respeito à observação das configurações necessárias para que o Banco de Dados não seja acessado por pessoas sem os devidos privilégios.*/



