insert into enderecos (rua, pais, cidade) 
	values ('Avenida Higienópolis', 'Brasil', 'Londrina'), ('Avenida Paulista', 'Brasil', 'São Paulo'), ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');

insert into usuario (nome, email, senha, endereco_id) 
	values 
	('Cauan', 'cauan@exemple.com', 1234, (select id from enderecos where rua like '%Paulista' and cidade = 'São Paulo')), 
	('Chrystian', 'chrystian@exemple.com', 4321, (select id from enderecos where rua like '%Marcelino%' and cidade = 'Curitiba')), 
	('Matheus', 'matheus@exemple.com', 3214, (select id from enderecos where rua like '%Higienópolis' and cidade = 'Londrina'));

insert into redes_sociais (nome) values ('Youtube'), ('Twitter'), ('Instagram'), ('Facebook'), ('Tiktok');

insert into usuario_redes_sociais (usuario_id, redes_sociais_id) 
	values 
		((select id from usuario where nome = 'Cauan'), (select id from redes_sociais where nome = 'Youtube')),
		((select id from usuario where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Youtube')),
		((select id from usuario where nome = 'Matheus'), (select id from redes_sociais where nome = 'Youtube')),
		((select id from usuario where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Twitter')),
		((select id from usuario where nome = 'Cauan'), (select id from redes_sociais where nome = 'Twitter')),
		((select id from usuario where nome = 'Matheus'), (select id from redes_sociais where nome = 'Instagram')),
		((select id from usuario where nome = 'Matheus'), (select id from redes_sociais where nome = 'Facebook')),
		((select id from usuario where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Instagram')),
		((select id from usuario where nome = 'Cauan'), (select id from redes_sociais where nome = 'Tiktok'))