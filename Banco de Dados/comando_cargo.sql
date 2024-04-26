desc cargo;

insert into cargo(codCargo, nome) values (null, "Gerente");
update cargo set salarioInicial = 2750.50 where codCargo=1;

insert into cargo(codCargo, nome) values (null, "Motoboy");
update cargo set salarioInicial = 2200.40 where codCargo=3;
#insert into cargo values (null, "exemplo_cargo", salario); -> outro exemplo de inserção de dados

#atualizar salario de forma geral, colocar codCargo < uma chave que não exista
update cargo set salarioInicial= salarioInicial+(salarioInicial* 0.1) where codCargo < 10;

delete from cargo where codCargo = 4; 

#caso fosse procurar pelo Diferente, pode usar != ou <>
select * from cargo where salarioInicial > 2000 ;


select * from cargo;

# contagem do número de linhas de uma tabela
select count(*) as "Total de cargos cadastrados" from cargo;

#mostrar o menor salário pago pela lanchonete
select min(salarioInicial) as "Menor salário" from cargo;
select*from cargo where salarioInicial= (select min(salarioInicial) from cargo);

#mostrar o maior salário pago pela lanchonete
select max(salarioInicial) as "Maior salário" from cargo;
select*from cargo where salarioInicial= (select max(salarioInicial) from cargo);

#mostrar a média salárial paga pela lanchonete, e de forma formatada
select format (avg(salarioInicial),2) as "Média salarial" from cargo;

#Limitar o número de dados apreentados
#exemplo: mostrar os 2 cargos com maior salário
select*from cargo order by salarioInicial desc limit 2; 


