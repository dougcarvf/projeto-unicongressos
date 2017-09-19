-- INSERTS DB_UNICONGRESSOS 

use db_unicongressos

-- POPULANDO TABELA CONGRESSO

insert into tb_congresso (tema_congresso, endereco_congresso, bairro_congresso, cidade_congresso, 
estado_congresso, data_congresso, hora_congresso, valor_congresso, descricao_congresso)
values ('IV SIMPOSIO DE EDUCACAO FISICA', 'rua poncio pilatos 130', 'jardim das palmeiras', 'florianopolis', 'santa catarina',
'17/11/2017', 14, 35.00, 'congresso para profissionais de educação física')

insert into tb_congresso (tema_congresso, endereco_congresso, bairro_congresso, cidade_congresso, 
estado_congresso, data_congresso, hora_congresso, valor_congresso, descricao_congresso)
values ('I congresso de comunicação social na ufrr', 'rua flora matos, 220', 'bairro do trevo', 'cubatão', 'roraima',
'20/08/2017', 09, 75.00, 'congresso aberto ao publico geral')

insert into tb_congresso (tema_congresso, endereco_congresso, bairro_congresso, cidade_congresso, 
estado_congresso, data_congresso, hora_congresso, valor_congresso, descricao_congresso)
values ('8º encontro dos servidores de PE', 'rua da aurora, 1958', 'boa vista', 'recife', 'pernambuco',
'15/12/2017', 13, 80.00, 'bla bla bla')

-- consultar dados
select * from tb_congresso

-- ************************//*********************************

-- POPULANDO TABELA PALESTRA

insert into tb_palestra (tema_palestra, local_palestra, data_palestra, descricao_palestra)
values ('Psicologia do Exercíco', ' SALA 25B, 13º andar', '17/11/2017 14:00','Contaremos com a participação especial da phd Vanuza Vieira')
insert into tb_palestra (tema_palestra, local_palestra, data_palestra, descricao_palestra)
values ('Prevenindo lesões em idosos', 'Auditório III, 5º andar', '18/11/2017', 'bla bla bla' )

--consultar dados palestra
select *from tb_palestra

--***************************//********************************

-- POPULANDO TABELA PRELETOR

insert into tb_preletor (cpf_preletor,nome_preletor ,endereco_preletor ,bairro_preletor ,cidade_preletor ,
estado_preletor ,email_preletor ,telefone_preletor,descricao_preletor)
values ('51325148192', 'Almir Arruda', 'rua das laranjeiras, Sala 12', 'Vila Matilde', 'Rio de Janeiro', 'Rio de Janeiro', 
'profalmiredfis@edu.com.br', '298776655','formado pela ufrj')
insert into tb_preletor (cpf_preletor,nome_preletor ,endereco_preletor ,bairro_preletor ,cidade_preletor ,
estado_preletor ,email_preletor ,telefone_preletor,descricao_preletor)
values ('126478951','Flavia Venturini', 'Centro de Pesquisa Aplicada IFMG', 'bairro das bromélias', 'Ouro Preto', 'Minas Gerais',
'flaviaventurini@gmail.com', '138587595', 'bla bla bla' )

-- consultar dados preletor

select * from tb_preletor