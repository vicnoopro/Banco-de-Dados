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

/*normalização de dados
	A normalização serve para classificar as informações, tornando o gerenciamento e manutenção do Banco de Dados mais fácil 
,resultando em melhor eficiência e desempenho. Além disso, diminui a redundância de dados e elimina irregularidades, 
o que permite evitar erros e garantir a consistência e integridade de dados.

	FN1 - cada coluna de uma tabela deve conter valores indivisíveis,
evitando duplicação de dados e facilita a manipulação das informações. A posição das colunas é irrelevante
e cada uma deve ter um nome que a identifique claramente.
	FN2 - Cada atributo de uma tabela deve depender da chave primária. Isso significa que se uma tabela tiver uma chave primária composta por várias colunas, 
cada atributo na tabela deverá estar diretamente relacionado com todas as colunas da chave primária.
	FN3 - os atributos que não são chave devem ser independentes entre si e dependentes única e exclusivamente da chave primária da tabela.
    Outra, valores que serão calculados não precisam ser armazenados na memória




 