--1
select * from enderecos;

--2
select e.rua, e.pais, e.cidade, u.id, u.nome, u.email, u.senha, u.endereco_id 
	from usuario as u
	full outer join enderecos as e
	on u.endereco_id = e.id
	order by u.endereco_id asc;

--3?? (dúvida em como deixar o select igual ao modelo. Está semelhante à da table usuario_redes_sociais e tentei incluir sem sucesso)
select r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id 
	from redes_sociais as r
	full outer join usuario as u
	on r.id = u.id;
	--order by usuario_redes_sociais.redes_sociais_id from usuario_redes_sociais urs;

--4?? (dúvida em como fazer o join de mais de 2 tabelas.)
select r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e. id, e.rua, e.pais, e.cidade
	from redes_sociais as r 
	full outer join usuario as u
	full outer join enderecos as e
	on r.id = u.id and u.endereco_id = e.id;

--5?? (idem seletor 4)
select 
	rede_social.nome, 
	usuario.nome, usuario.email,
	e.cidade 
	from redes_sociais as rede_social
	full outer join enderecos as e
	on rede_social.id = usuario.id and usuario.endereco_id = e.id;

--6 (consequência selector 5)
(...)
where r.nome = "Youtube";

--7 (idem)
(...)
where r.nome = "Instagram";

--8 (idem)
(...)
where r.nome = "Facebook";

--9 (idem)
(...)
where r.nome = "Tiktok";

--10 (idem)
(...)
where r.nome = "Twitter";

