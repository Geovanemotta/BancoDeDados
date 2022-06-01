CREATE DATABASE IF NOT EXISTS Restaurante;
USE Restaurante;

create table if not exists Categoria
(
	id tinyint unsigned auto_increment,
    nome varchar(50) not null,
    constraint PK_Categoria_id primary key (id)
);

create table if not exists Cliente
(
	id int unsigned auto_increment,
    nome varchar(20) not null,
    sobrenome varchar(11)null,
    cpf char(11) null,
    email varchar(25) not null,
    telefone char(12) null,
    constraint PK_Cliente primary key (id)
    );
           
    create table if not exists Produto
    (
		id int unsigned auto_increment primary key,
        nome varchar(100) not null,
        descricao text null,
        urlImagem varchar(500) null,
        idCategoria tinyint unsigned,
        constraint FK_Produto_Categoria_idCategoria foreign key (idCategoria) references Categoria(id)
	);
    
    create table if not exists Venda
    (
		id bigint unsigned auto_increment primary key,
        dataVenda datetime not null,
        valorTotal decimal(10,2) not null
	);
    
    alter table Venda add column idCliente int unsigned;
    alter table Venda add constraint FK_Venda_Cliente_idCliente foreign key (idCliente) references CLiente(id);
    
    create table if not exists itemVenda
    (
		id int unsigned auto_increment,
        quantidade int unsigned not null,
        precoUnitario decimal(8,2) not null,
        idVenda bigint not null,
        idProduto int unsigned not null,
        constraint PK_itemVenda_id primary key (id),
        constraint FK_itemVenda_Venda foreign key (idCategoria) references Categoria (id)
	);