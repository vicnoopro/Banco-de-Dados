SELECT * FROM lanchonete_2d_2024.categoria;

#use serve para linkar o sql com o java
use lanchonete_2d_2024;

insert into categoria(nome) values ("Salgadinhos industrializados");
insert into categoria(nome) values ("Água");
insert into categoria(nome) values ("Sucos naturais");

update categoria set nome="Refrigerante em lata" where codCategoria=1;

delete from categoria where codCategoria=3;