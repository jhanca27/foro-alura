create table cursos(
    id bigint not null auto_increment,
    nombre varchar(100) not null,
    categoria varchar(100) not null,

    primary key(id)
);


create table topicos(
    id bigint not null auto_increment,
    titulo varchar(255) not null,
    mensaje varchar(255) not null,
    fecha_creacion datetime not null,
    status tinyint not null,
    usuario_id bigint not null,
    curso_id bigint not null,


    constraint fk_usuario_id foreign key(usuario_id) references usuarios(id),
    constraint fk_curso_id foreign key(curso_id) references cursos(id),

    primary key(id)
);