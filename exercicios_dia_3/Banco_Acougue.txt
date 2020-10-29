create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
 id bigint (5) auto_increment,
 n_categoria varchar (100) not null,
 ativo boolean,
 primary key (id)
);

insert into tb_categoria (n_categoria, ativo) values ("Ave", true);
insert into tb_categoria (n_categoria, ativo) values ("Carne Bovina", true);
insert into tb_categoria (n_categoria, ativo) values ("Carne Ovina", true);
insert into tb_categoria (n_categoria, ativo) values ("Carne Suína", true);
insert into tb_categoria (n_categoria, ativo) values ("Peixe", true);

create table tb_produto (
 id bigint (5) auto_increment,
 n_produto varchar (100),
 preco decimal (6,2),
 ativo boolean,
 categoria_id bigint (5),
 primary key (id),
 foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Bisteca", 12.00, true, 4);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Contrafilé", 30.00, true, 2);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Ossobuco", 20.00, true, 2);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Lombo", 15.00, true, 4);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Carre de cordeiro", 50.00, true, 3);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Coxa e Sobrecoxa de frango", 13.00, true, 1);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Fígado", 9.00, true, 2);
insert into tb_produto (n_produto, preco, ativo, categoria_id) values ("Filé de Peito de frango", 12.00, true, 1);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where n_produto like "%co%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id where tb_categoria.id = 4;