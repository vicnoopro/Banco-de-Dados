show tables;

desc carro;

update vi_relatoriocompleto set corcarro = "Preto" where cod_carro = 1;
update vi_relatoriocompleto set corcarro = "Vermelho" where cod_carro = 2;
update vi_relatoriocompleto set corcarro = "Branco" where cod_carro = 3;

select * from vi_relatoriocompleto;