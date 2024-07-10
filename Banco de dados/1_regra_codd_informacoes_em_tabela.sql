/*A partir do momento que as informações estão em tabelas, podemos aplicar várias formatações e filtros de dados.
	Para digitar os comandos no Workbench, temos a opção de criar vários arquivos SQL, usando o botão usando da barra de ferramentas.*/
select * from cargo;

#1°Regra: Informações em tabelas.

#mostrar os cargos com todas as letras maiúsculas
select ucase(nome),salarioInicial from cargo;

#mostrar os cargos com todas as letras minúsculas
select lcase(nome),salarioInicial from cargo;

#mostrar em letras maiusculas os cargos que ganham mais de 2000
select ucase(nome),salarioInicial from cargo where salarioInicial > 2000;

#mostrar apenas a média dos salários
select format(avg(salarioInicial),2) as "Média Salarial" from cargo;

#Apresnetar os dados dos cargos com letras minusculas para aqueles que ganham menos que a media salarial
select codCargo, lcase(nome), salarioInicial from cargo where salarioInicial < (select avg(salarioInicial)from cargo);