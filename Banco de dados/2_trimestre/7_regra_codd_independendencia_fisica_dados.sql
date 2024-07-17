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


