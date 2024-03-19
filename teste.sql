create database livros;
use livros;

create table usuario (
        id_usuario int primary key,
        nome_usuario varchar (100) not null,
        endereco varchar (100),
        telefone int not null, 
        nome_curso varchar (50)
);

create table obra (
     isbn varchar (25) primary key,
     titulo varchar (25) unique,
     ano_publicaco date not null,
     idioma varchar (50),
     classificacao varchar (3),
     constraint fk_obra_usuario foreign key (id_usario) references usuarios (id_usuarios)

);

create table autor (
        nacionalidade varchar (20) not null,
        nome_autor varchar (50),
        id_autor int primary key,
        constraint fk_obra_autor foreign key (isbn) references obra (isbn)

);

 
create table editora (
      id_editora int primary key,
      nome_editora varchar (70),
      cidade varchar (25),
      constraint fk_editora_obra foreign key (isbn) references obra (isbn)


);
