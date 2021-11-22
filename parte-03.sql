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
	from usuario_redes_sociais as urs
	full outer join usuario as u
	on u.id = urs.usuario_id 
	full outer join redes_sociais as r
	on r.id = urs.rede_social_id;

--4
select r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e. id, e.rua, e.pais, e.cidade
	from usuario_redes_sociais as urs
	full outer join redes_sociais as r
	on r.id = urs.redes_sociais_id 
	full outer join usuario as u
	on u.id = urs.usuario_id 
	full outer join enderecos as e
	on e.id = u.endereco_id;	

--5
select rede_social.nome, usuario.nome, usuario.email, e.cidade 
	from usuario_redes_sociais as urs 
	full outer join redes_sociais as rede_social
	on rede_social.id = urs.redes_sociais_id 
	full outer join usuario
	on usuario.id = urs.usuario_id 
	full outer join enderecos as e 
	on e.id = usuario.endereco_id;


--6
select 
	rede_social.nome, 
	usuario.nome, usuario.email,
	e.cidade 
	from usuario_redes_sociais as urs 
	full outer join redes_sociais as rede_social
	on rede_social.id = urs.redes_sociais_id
	full outer join usuario
	on usuario.id = urs.usuario_id
	full outer join enderecos as e 
	on e.id = usuario.endereco_id
	where rede_social.nome = 'Youtube';
	
--7
select 
	rede_social.nome, 
	usuario.nome, usuario.email,
	e.cidade 
	from usuario_redes_sociais as urs 
	full outer join redes_sociais as rede_social
	on rede_social.id = urs.redes_sociais_id
	full outer join usuario
	on usuario.id = urs.usuario_id
	full outer join enderecos as e 
	on e.id = usuario.endereco_id
	where rede_social.nome = 'Instagram';

--8
select 
	rede_social.nome, 
	usuario.nome, usuario.email,
	e.cidade 
	from usuario_redes_sociais as urs 
	full outer join redes_sociais as rede_social
	on rede_social.id = urs.redes_sociais_id
	full outer join usuario
	on usuario.id = urs.usuario_id
	full outer join enderecos as e 
	on e.id = usuario.endereco_id
	where rede_social.nome = 'Facebook';

--9
select 
	rede_social.nome, 
	usuario.nome, usuario.email,
	e.cidade 
	from usuario_redes_sociais as urs 
	full outer join redes_sociais as rede_social
	on rede_social.id = urs.redes_sociais_id
	full outer join usuario
	on usuario.id = urs.usuario_id
	full outer join enderecos as e 
	on e.id = usuario.endereco_id
	where rede_social.nome = 'Tiktok';

--10
select 
	rede_social.nome, 
	usuario.nome, usuario.email,
	e.cidade 
	from usuario_redes_sociais as urs 
	full outer join redes_sociais as rede_social
	on rede_social.id = urs.redes_sociais_id
	full outer join usuario
	on usuario.id = urs.usuario_id
	full outer join enderecos as e 
	on e.id = usuario.endereco_id
	where rede_social.nome = 'Twitter';
