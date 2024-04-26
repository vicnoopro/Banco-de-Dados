#descreve a estrutura da tabela marca
desc marca;

#seleciona todos os dados da tabela marca
select * from marca;

#atualiza a marca com codigo 6 preenchendo as observações
update marca set observacoes = "Salgadinhos Diversos" where codMarca=6;

#insere em marca preenchendo seu nome e observações
insert into marca(nome, observacoes) values ("Pullman", "Pão Artesano");

#seleciona todas as marcas em que as observações estao preenchidas
select * from marca where observacoes is not null;

#seleciona todas as marcas em que as observações não estão preenchidas
select * from marca where observacoes is null;

