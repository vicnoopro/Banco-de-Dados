#manipulação da tabela cliente

desc cliente;
insert into cliente(nomeCliente) values("Cliente à vista");

insert into cliente(nomeCliente, CPF, dataNascimento) values("Flávio", "111.111.111-11", "1987-06-12");
insert into cliente(nomeCliente, CPF, dataNascimento) values("Andersson", "222,222.222-22", "1754-02-04");
insert into cliente(nomeCliente, CPF, dataNascimento) values("Catarina", "333.333.333-33", "2000-12-24");

select * from cliente;

