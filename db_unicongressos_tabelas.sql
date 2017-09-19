-- UNICONGRESSOS BD - 
--drop database db_unicongressos -- NÃO RETIRAR O COMENTÁRIO SE NÃO APAGA O BANCO !!


-- DATABASE UNICONGRESSOS

create database db_unicongressos

use db_unicongressos

-- TABELA LOGIN

create table tb_loginusuario(
id_login int identity(1,1) not null, 
email_login varchar(100) not null,
senha_login varchar(8) not null,
constraint pk_login primary key (id_login)
)

-- TABELA CONGRESSO

create table tb_congresso(
id_congresso int identity (1,1) not null,
tema_congresso varchar(200) not null,
endereco_congresso varchar (50),
bairro_congresso varchar (50), 
cidade_congresso varchar (50),
estado_congresso varchar (50),
data_congresso datetime,
hora_congresso datetime,
valor_congresso money,
descricao_congresso varchar(max),
id_palestra int,
constraint pk_congresso primary key (id_congresso),
)

alter table tb_congresso
add constraint fk_congressopalest foreign key (id_palestra)
references tb_palestra (id_palestra)

-- **************************//********************************

-- TABELA PALESTRA
create table tb_palestra (
id_palestra int identity (1,1) not null,
tema_palestra varchar(100) not null,
local_palestra varchar (50),
data_palestra datetime,
id_preletor int,
id_congresso int,
descricao_palestra varchar(max),
constraint pk_palestra primary key (id_palestra),
constraint fk_palestcongresso foreign key (id_congresso)
 references tb_congresso (id_congresso),
--constraint fk_palestpreletor foreign key (id_preletor)references tb_preletor (id_preletor),
)

alter table tb_palestra
add constraint fk_palestpreletor foreign key (id_preletor)references tb_preletor (id_preletor)


--***********************************//*****************************
-- TABELA PRELETOR
create table tb_preletor(
id_preletor int identity (1,1) not null,
cpf_preletor varchar (11),
nome_preletor varchar (100),
endereco_preletor varchar (50),
bairro_preletor varchar(50),
cidade_preletor varchar(50),
estado_preletor varchar(50),
email_preletor varchar(50),
telefone_preletor int,
descricao_preletor varchar (max),
id_congresso int,
id_palestra int,
constraint pk_preletor primary key (id_preletor),
constraint fk_preletorpalestra foreign key (id_palestra) references tb_palestra (id_palestra),
)
alter table tb_preletor 
add constraint fk_preletorcongresso foreign key (id_congresso) references tb_congresso (id_congresso)

--***************************************//*************************************

-- TABELA USUÁRIO
create table tb_usuario(
id_usuario int identity (1,1) not null,
cpf_usuario char(11) not null,
cnpj_usuario int,
nome_usuario varchar (100),
endereco_usuario varchar (50),
bairro_usuario varchar (50),
cidade_usuario varchar (50),
estado_usuario varchar (50),
telefone_usuario int,
email_usuario varchar(50),
senha_usuario varchar(8),
id_congresso int,
id_palestra int
constraint pk_usuario primary key (id_usuario),
constraint fk_usuariocongresso foreign key (id_congresso)
references tb_congresso (id_congresso),
constraint fk_usuariopalestra foreign key (id_palestra)
references tb_palestra (id_palestra)
)