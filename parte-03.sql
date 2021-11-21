--1
select * from enderecos;

--2
select e.rua, e.pais, e.cidade, u.id, u.nome, u.email, u.senha, u.endereco_id 
	from usuario as u
	full outer join enderecos as e
	on u.endereco_id = e.id
	order by u.endereco_id asc;

--3??
select r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id 
	from redes_sociais as r
	full outer join usuario as u
	on r.id = u.id
	order by usuario_redes_sociais.redes_sociais_id from usuario_redes_sociais urs;

--4??
select r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e. id, e.rua, e.pais, e.cidade
	from redes_sociais as r 
	full outer join usuario as u
	full outer join enderecos as e
	on r.id = u.id and u.endereco_id = e.id;

--5??
select 
	rede_social.nome, 
	usuario.nome, usuario.email, usuario.id,
	e.cidade 
	from redes_sociais as rede_social
	full outer join enderecos as e
	on rede_social.id = usuario.id and uusuario.endereco_id = e.id;

--6
(...)
where r.nome = "Youtube";

--7
(...)
where r.nome = "Instagram";

--8
(...)
where r.nome = "Facebook";

--9
(...)
where r.nome = "Tiktok";

--10
(...)
where r.nome = "Twitter";

