create database db_rh2;

use db_rh2;

create table tb_cargo (
id bigint(5) auto_increment,
cargo varchar (100),
nivel varchar (100),
salario decimal (10,2),
primary key (id)
);

insert into tb_cargo (cargo, nivel, salario) values ("Desenvolvedor Java", "Júnior", 3500.00);
insert into tb_cargo (cargo, nivel, salario) values ("Desenvolvedor Java", "Pleno", 6800.00);
insert into tb_cargo (cargo, nivel, salario) values ("Desenvolvedor Java", "Sênior", 10000.00);
insert into tb_cargo (cargo, nivel, salario) values ("Engenheiro de Testes", "Pleno", 8000.00);
insert into tb_cargo (cargo, nivel, salario) values ("Desenvolvedor Java", "Estagiário", 1500.00);

create table tb_funcionario (
id bigint (5) auto_increment,
nome varchar (200) not null,
data_contratacao date,
ativo boolean,
cargo_id bigint (5),
primary key (id),
FOREIGN KEY (cargo_id) references tb_cargo (id)
);

insert into tb_funcionario (nome, ativo, cargo_id) values ("Lucas Batata",true, 3);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Vagnão",true, 4);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Luis",true, 2);
-- insert into tb_funcionario (nome, ativo, cargo_id) values ("Lucas Batata",true, 3);
delete from tb_funcionario where id = 4;
insert into tb_funcionario (nome, ativo, cargo_id) values ("Estela",true, 1);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Charles",true, 5);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Elizabeth",true, 4);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Victória",true, 3);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Samy",true, 2);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Eliane",true, 5);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Carolina",true, 1);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Celso",true, 4);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Brigitte",true, 5);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Neptuno",true, 2);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Lola",true, 3);
insert into tb_funcionario (nome, ativo, cargo_id) values ("Bob",true, 1);

-- salário maior que $2000.00
select * from tb_funcionario where cargo_id <> 5;

-- salário entre $1000.00 e $2000.00
select * from tb_funcionario where cargo_id = 5;

-- com c em qualquer parte do nome
select * from tb_funcionario where nome like "%C%";

-- Nomes que comecem com a letra C
select * from tb_funcionario where nome like "C%";





