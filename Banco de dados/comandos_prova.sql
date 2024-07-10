desc cargo;

insert into cargo(codCargo, nome) values (null, "Gerente");
update cargo set salarioInicial = 2000 where codCargo=1;

select * from cargo;

insert into cargo(codCargo, nome) values (null, "Atendente");
update cargo set salarioInicial = 1412 where codCargo=2;

update cargo set salarioInicial = 2300.50 where codCargo=1;

select * from cargo where salarioInicial > 2000 ;

delete from cargo where codCargo = 1;