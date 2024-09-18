#relembrar a estrutura da tabela Funconario
desc funconario;

#visualizar os dados de cada Funcionario
select * from funconario;

#conferir a data do servidor
select curdate();

#calcular a quantos anos cada funcionario trabalha na lanchonete
select nome, date_format(dataAdmissao, "%d/%m/%Y") as "Data do contrato", 
floor(datediff(curdate(), dataAdmissao)/365) as "Anos na empresa" #floor arredonda o valor, datediff faz a diferença entre datas, e divide por 365 para o resultado ser em anos
from funconario;