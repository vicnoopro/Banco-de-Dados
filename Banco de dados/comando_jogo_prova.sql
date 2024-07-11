desc classificacao;
desc fabricante;
desc jogo;

insert into classificacao(codclassificacao, nomeclassificacao, publicoalvo) values (null, "Terror", "Adolescentes entre 12-18 anos");
select * from classificacao;

insert into fabricante(codfabricante, nomefabricante, emailfabricante) values (null, "Riot", "Riot.com");
select * from fabricante;

update classificacao set nomeclassificacao="Puzzle" where codclassificacao=2;
delete from jogo where codjogo=3;

insert into jogo values (null, "Minecraft", 2007, 1,1);
select * from jogo;

select j.titulojogo, j.anofabricacao, c.NomeClassificacao from jogo as j inner join classificacao as c on c.CodClassificacao = j.CodJogo;