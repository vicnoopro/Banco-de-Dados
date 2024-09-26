show tables;

 desc jogador;
 insert into jogador(nomeJogador, matricula) values ("João Victor", "202211987003");
 insert into jogador(nomeJogador, matricula) values ("Paola Vieira", "20201398887");
select * from jogador;

desc jogo;


desc niveis;
insert into niveis(tipoNivel, chancesPossiveis) values ("Fácil", 10);
insert into niveis(tipoNivel, chancesPossiveis) values ("Médio",5);
insert into niveis(tipoNivel, chancesPossiveis) values ("DiFícil",3);
select * from niveis;

desc pergunta;
insert into pergunta(descricao, resposta) values ("Qual cor é utilizada em reciclagem para indicar o depósito de papel?", "Azul");
select * from pergunta;
 