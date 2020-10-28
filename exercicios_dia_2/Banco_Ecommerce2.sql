create database db_ecommerce2;
use db_ecommerce2;

create table tb_categoria (
id bigint (5) auto_increment,
n_categoria varchar (100),
ativo boolean,
primary key (id)
);

insert into tb_categoria (n_categoria, ativo) values ("Vestuário", true);
insert into tb_categoria (n_categoria, ativo) values ("Cama e Banho", true);
insert into tb_categoria (n_categoria, ativo) values ("Eletrodoméstico", true);
insert into tb_categoria (n_categoria, ativo) values ("Eletrônicos", true);
insert into tb_categoria (n_categoria, ativo) values ("Casa e Jardim", true);

create table tb_produto (
id bigint (5) auto_increment,
n_produto varchar (200),
valor decimal (15,2),
categoria_id bigint (5),
ativo boolean,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Camiseta Adidas", 199.99, 1, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Regador de Metal", 56.99, 5, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Geladeira Brastemp", 2546.76, 3, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Camisa Calvin Klein", 250.99, 1, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Smartphone Xiaomi Mi A2", 1000.15, 4, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Kit Lençol e Fronha Santista", 75.98, 2, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Smartphone Iphone X", 4000.00, 4, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Cadeira Balanço Jardim", 789.99, 5, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Mangueira 30m", 50.00, 5, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Touca Adidas Ivy Park", 199.99, 1, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Jogo Toalhas Santista", 350.99, 2, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("AirFryer Black&Decker", 320.99, 3, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Aspirador de Pó Wap", 385.66, 3, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Smartphone Samsung Galaxy Note", 3250.77, 4, true);
insert into tb_produto (n_produto, valor, categoria_id, ativo) values ("Organizador de Armários", 199.99, 5, true);

select * from tb_produto where valor > 2000.00;

select * from tb_produto where valor > 1000.00 and valor < 2000.00;

select * from tb_produto where n_produto like "%c%";

select * from tb_produto where n_produto like "c%";


