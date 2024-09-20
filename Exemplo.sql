CREATE DATABASE gerVenda;
use gerVenda;

create table produtos(
produto_id int auto_increment primary key,
nome varchar (50),
preco decimal (10,2),
estoque int

);

CREATE TABLE vendas(
	venda_id int auto_increment primary key,
	produto_id int,
	quantidade int, 
	data_venda date,
	foreign key(produto_id) references produtos(produto_id)
 );
 
 insert into produtos(nome,preco,estoque)
 values ("notebook_dell",7000.00,35),
		("Notebool_Samsung",11000.00,35),
        ("Notebook_iphone",15000.00,35),
        ("Notebook_lg",4000.00,35),
        ("Notebook_Motorola",2000.00,35);
         
insert into vendas (produto_id,quantidade,data_venda)
values (1,5,"2024/09/25,");

insert into vendas (produto_id,quantidade,data_venda)
values (5,10,"2024/10/22,");
 
 update produtos
 set preco = 6500.00
 where produto_id= 1;
 
 update vendas
 set quantidade = 63
 where venda_id= 1;

 
 delete  from produtos
 where produto_id = 1;
 
 delete from vendas
 where venda_id = 2;
 
  select * from produtos;
  select nome, estoque from produtos;
  
   select * from vendas;
   select quantidade, data_venda from vendas;
   
   select * from vendas
   where venda_id =2;
  