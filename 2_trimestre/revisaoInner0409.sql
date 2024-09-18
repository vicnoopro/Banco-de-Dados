select * from funconario;

create view vi_funconario_Cargos as (
select f.nome as "Nome do funcionário", f.salarioAtual as "Salario atual", 
date_format(f.dataAdmissao,"%d/%m/%Y") as "Admissão", 
f.carTrab as "Carteira de trabalho", c.nome as "Cargo" from funconario as f
inner join cargo as c on f.cargo_codCargo = c.codCargo);

select * from vi_funconario_Cargos;