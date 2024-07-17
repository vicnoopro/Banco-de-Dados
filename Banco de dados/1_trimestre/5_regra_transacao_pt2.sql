begin;
	update produto set nome=lcase(nome) where marca_codMarca = 6;
commit;