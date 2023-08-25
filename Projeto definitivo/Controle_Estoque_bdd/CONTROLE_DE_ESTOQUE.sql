CREATE DATABASE Controle_de_Estoque

USE Controle_de_Estoque

create table Produtos
(
IDp int primary key,
Nome_P varchar(225) not null,
Descricao_P varchar(225) not null,
Preço_Unitário_P money not null,
Quantidade_Estoque_P varchar(225) not null,
)

create table Fornecedores
(
IDf int primary key,
Nome_f varchar(225) not null,
Contato_f varchar(225) not null,
)

create table Entradas
(
IDe int primary key,
Data_Entrada time not null,
Hora_Entrada time not null,
Produto_Relacionado varchar(225) not null, /*chave estrangeira referenciando a tabela "Produtos"*/
Quantidade_Entrada int not null,
Fornecedor_Relacionado varchar(225) not null, /*chave estrangeira referenciando a tabela "Fornecedores"*/
)

create table Saidas
(
IDs int primary key,
Data_Saida time not null,
Hora_Saida time not null,
Produto_Relacionado varchar(225) not null, /*chave estrangeira referenciando a tabela "Produtos"*/
Quantidade_Saida int not null,
Destino_Saida varchar(225) not null,
)

create table Categorias
(
IDc int primary key,
Nome_C varchar(225) not null,
)