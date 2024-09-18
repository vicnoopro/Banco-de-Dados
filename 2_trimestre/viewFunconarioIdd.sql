
select* from cliente;

create view vi_clienteIdd as (
select nomeCliente, email, date_format(dataNascimento,"%d/%m/%Y") as "Data de nascimento", floor((datediff(curdate(), dataNascimento)/365)) as Idade from cliente);

select * from vi_clienteIdd;