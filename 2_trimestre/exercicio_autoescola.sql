
##Regra 7 : Independencia física dos dados

show tables;
select * from carro;
select * from marca;


ALTER TABLE `autoescola2d`.`carro` 
CHANGE COLUMN `anoFabricacao` `anodeproducao` YEAR NOT NULL;

ALTER TABLE `autoescola2d`.`carro` 
ADD COLUMN `corcarro` VARCHAR(45) NULL AFTER `modelo`;

desc carro;
desc marca;

UPDATE `autoescola2d`.`carro` SET `corcarro` = 'Preto' WHERE (`cod_carro` = '1') and (`marca_codMarca` = '1');


#Regra 8 : Independencia lógica dos dados
create view vi_relatorioCompleto as(
select c.cod_carro, m.nome as  "Marca do carro",
 c.modelo as "Modelo", 
c.corcarro, c.chassi as "Chassi",
 c.anodeproducao as "Ano de Produção" from carro as c
 inner join marca as m on c.marca_codMarca = m.codmarca);

select * from vi_relatorioCompleto;

