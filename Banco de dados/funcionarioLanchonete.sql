select * from cargo;
desc funconario;

insert into funconario values (null, "João Pedro", "AbCdEf", 4200,1);

#mostrar tudo de funcionario ligando à chave estrangeira dentro de funcionario e de onde a chave veio
select * from funconario as f inner join cargo as c on f.cargo_codCargo = c.codCargo;


