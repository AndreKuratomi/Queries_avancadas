create table if not exists redes_sociais(
    id bigserial primary key,
    nome varchar(150) unique not null
);

create table if not exists usuario(
    id bigserial primary key,
    nome varchar(100),
    email varchar not null unique,
    senha varchar not null,
    endereco_id integer not null,
    foreign key (endereco_id) references enderecos(id)
);

create table if not exists enderecos(
    id bigserial primary key,
    rua varchar not null,
    pais varchar(100) not null,
    cidade varchar(100) not null
);

create table if not exists usuario_redes_sociais(
    usuario_id integer not null references usuario(id) on delete cascade,
    rede_social_id integer not null references rede_social(id) on delete cascade
    constraint id primary key (usuario_id, rede_social_id)
);
