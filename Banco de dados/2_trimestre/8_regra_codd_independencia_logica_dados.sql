#regra 8 - independencia logica dos dados

#Criar uma TABELA VIRTUAL (view) que mostre para cada funcionario:
#código, nome, cpf, data de admissao e anos trabalhados

create view vi_anosContrato as(
select codfFunconario, nome, cpf,
date_format(dataAdmissao, "%d/%m/%Y") as "Data do Contrato",
floor(datediff(curdate(),dataAdmissao)/365) as "Anos Trabalhados"
from funconario);

show tables;

select * from vi_anosContrato;


 