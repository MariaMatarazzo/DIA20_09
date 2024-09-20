create database Empresa3;

create table departamento(
dcodigo int auto_increment PRIMARY KEY,
dnome varchar (50)
);

create table funcionario(
funcodigo int auto_increment PRIMARY KEY,
dcodigo int,
nome varchar (50),
nascimento date,
salario int,
foreign key(dcodigo) references departamento(dcodigo)
);

create table dependente(
depcodigo int auto_increment PRIMARY KEY,
funcodigo int,
depnome varchar (50),
foreign key(funcodigo) references funcionario(funcodigo)
);

INSERT INTO departamento(dcodigo, dnome)
values  (1,"Rh"),
		(2,"Financeiro"),
        (3,"Marketing"),
        (4,"Vendas"),
        (5,"Ti"),
        (6,"Operações"),
		(7,"Compras"),
        (8,"Juridico"),
        (9,"Atendimento_ao_Cliente"),
        (10,"Desenvolvimento_de_Produto");
        
        
        INSERT INTO funcionario(dcodigo, nome, nascimento, salario)
          values (1,"Ana","1987-11-11",1300.00),
          (2,"Taina","1995-09-7",1600.00),
          (3,"Rafa","1931-03-1",1800.00),
          (4,"Giovanna","02-02-8",1900.00),
          (5,"Vinicius","1909-01-3",2000.00),
          (6,"Diogo","1902-12-8",2100.00),
		  (7,"Isabella","1903-07-8",2100.00),
          (8,"Lucas","1910-06-09",2200.00),
          (9,"Gustavo","1911-03-09",2300.00),
          (10,"Laura","2009-01-08",2400.00);
          
          
          INSERT INTO dependente(depnome)
          values ("FA"),
          ("GV"),
          ("BB"),
		  ("EF"),
          ("LM"),
          ("IH"),
          ("HD"),
          ("HB"),
          ("JK"),
          ("FP");
          
          select * from departamento;
          select * from funcionario;
        

