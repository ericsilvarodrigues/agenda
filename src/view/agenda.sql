/**
Agenda de contatos 
@author Eric Silva Rodrigues 
*/

/*-- banco de dados*/
-- exibir os bancos de dados do servidor
show databases; 
-- criar um novo banco de dados 
create database dbagenda;
-- selecionar o banco de dados
use dbagenda;
-- excluir um banco de dados 
drop database dbagenda;

/*** tabela ***/
-- crate table (cria uma tabela)
-- int tipo de dados (número inteiro)
-- primary key (PK) "chave primaria"
-- auto_increment (numeração automática)
-- varchar(30) tipo de dados String (máximo de caracteres)
-- not null (validação com campo obrigatório)
create table contatos ( 
	id int primary key auto_increment,
    nome varchar(30) not null,
    fone varchar(15) not null,
    email varchar(30)
);

-- para verificar as tabelas existentes no banco de dados 
show tables;

-- para descrever a tabela usamos o comando describe
describe contatos;

-- alterando o nome de um campo da tabela 
alter table contatos change nome contato varchar(30) not null; 
alter table contatos change fone telefone varchar(15) not null;

-- adicionando um campo a tabela 
alter table contatos add column obs varchar(250);

-- adicionando um campo em um local específico
alter table contatos add column telefone2 varchar(15) after telefone;

-- modificando um atributo (tipo de dados, validação etc)
alter table contatos modify column telefone2 varchar(15) not null;
alter table contatos modify column contato varchar(50) not null;

-- apagar um campo da tabela 
alter table contatos drop column obs;  

-- apagar a tabela 
drop table contatos;

/***************** CRUD *****************/
-- CRUD [Create]
insert into contatos (nome,fone,email)
values ('Jose de Assis','99999-1234','jose@gmail.com');

insert into contatos (nome,fone)
values ('Bill Gates','99999-1234');

insert into contatos (nome,fone,email)
values ('Eric Silva','99999-1234','eric@gmail.com');

-- exemplo de erro (campo obrigatório)
insert into contatos (nome,email)
values ('Linus torvalds', 'linus@gmail.com');

-- exemplo de erro (limite de caracteres)
insert into contatos (nome,fone,email)
values ('Leandro Ramos', '(55) (11) 99999-8888','leandro@email.com');


select * from contatos;

delete from contatos where id = 3;

  
 

