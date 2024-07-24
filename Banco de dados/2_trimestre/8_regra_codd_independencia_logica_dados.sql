#regra 8 - independencia logica dos dados

#Criar uma TABELA VIRTUAL (view) que mostre para cada funcionario:
#código, nome, cpf, data de admissao e anos trabalhados

create view vi_anosContrato as(
select codfFunconario, nome, cpf,
date_format(dataAdmissao, "%d/%m/%Y") as "Data do Contrato",
floor(datediff(curdate(),dataAdmissao)/365) as "Anos Trabalhados"
from funconario);

/*Na criaçã da view o ideal é montar o select que fará o filtro de dados 
primeiro e em seguida, delimitá-lo por 'CREATE VIEW nomeTabelavitual as'
e o comando select entre ().
Cada view pode ser criada com o mesmo nomeTabelavirtual uma vez apenas.
Feito isso, a view aparecerá na lista de tabelas com show tables ou na lateral esquerda, no objeto views.*/

show tables;

select * from vi_anosContrato;


 