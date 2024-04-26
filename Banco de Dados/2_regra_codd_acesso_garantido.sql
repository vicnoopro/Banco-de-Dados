#2° Regra: Acesso garantido.

#Selecionar todos os dados da tabela cargo
select * from cargo;

#selecionar um dos cargos a partir da pk
select * from cargo where codCargo=2;

##reembrando como calcula a media##
select format(avg(salarioInicial),2) from cargo;

#mostrar apenas nome e salarioInicial em determinada condição
select nome, salarioInicial from cargo where salarioInicial < (select avg(salarioInicial) from cargo);

