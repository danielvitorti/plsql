-- Tem que estar logado como usuario system
-- Cria o tablespace para os dados 

create tablespace tbs_dados
datafile 'C:\oraclexe\app\oracle\oradata\tbd_dados.dbf' size 100M reuse
autoextend on next 10M maxsize 200M
online;


create user aluno -- usuario
identified by "123" --senha
default tablespace tbs_dados
temporary tablespace temp;


-- Cria e define a role de privilegios ( perfil ) 

create role perfil_desenv;


grant
  create cluster,
  create database link,
  create procedure,
  create session,
  create sequence,
  create synonym,
  create table,
  create any type,
  create trigger,
  create view 
to perfil_desenv;

grant alter session to perfil_desenv;


grant create trigger to aluno;

grant perfil_desenv to aluno;


grant unlimited tablespace to aluno;