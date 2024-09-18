#contexto e exemplo da regra 7 de Edgar Codd
#Independencia física dos dados

desc funconario;

select * from funconario;
select * from cargo;

/*Mesmo alterando, por exemplo, o nome de um atributo e o seu tamanho, o comando SQL para relatório
consegue refletir a mudança*/

ALTER TABLE `lanchonete_2d_2024`.`funconario` 
CHANGE COLUMN `carteiraTrabalho` `carTrab` VARCHAR(90) NOT NULL ;

/*o exemplo seguinte cria 2 atributos na tabela funcionario e o relatorio geral continua funcionando*/

ALTER TABLE `lanchonete_2d_2024`.`funcionario` 
ADD COLUMN `email` VARCHAR(300) NULL AFTER `salarioAtual`,
ADD COLUMN `dataAdmissao` DATE NULL AFTER `email`;


#Relatório que busca dados específicos na tabelas FUNCONARIO e CARGO e com a data formatada, usando a função 'date format' 
select f.nome as "Nome do funcionário",  #apelidando o campo no relatório
f.carTrab as "Carteira de trabalho",   #apelidando o campo no relatório
 date_format(f.dataAdmissao,"%d/%m/%Y") as "data de admissão",  #serve para formatar a data no formato brasileiro
 c.nome as "Cargo ocupado"   #apelidando o campo no relatório
 from funconario as f inner join cargo as c
 on f.cargo_codCargo = c.codCargo;  #o final das comparações após o inner join deve ser igual


#mostrar o total de itens cadastraos em uma tabela
select count(*) as "Total de funcionários" from funconario;