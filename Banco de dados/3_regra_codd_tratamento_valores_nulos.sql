#3°Regra: Tratamento de valores nulos

#relembrar a estrutura da tabela cargo
desc cargo;
select * from cargo;

#inserir um cargo administrativo sem salario inicial
insert into cargo(nome) values("Administrativo");

#filtrar cargos para os quais salarioInicial não foi informado
select * from cargo where salarioInicial is null;

#exibe os cargos que possuem salarioInicial cadastrado
select * from cargo where salarioInicial is not null;

