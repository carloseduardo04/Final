create database petshop_carlao;
use petshop_carlao;
create table estoque(
IDprod mediumint(8) unsigned NOT NULL auto_increment,
nomeprod varchar(255),
tipo varchar(255),
porte varchar(255) default NULL,
valor mediumint(8) default NULL,
quantidade mediumint(8) default NULL,
primary KEY (IDprod)
);
drop table estoque;

insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("1","ração supreme","gato","m",28,"239");
INSERT INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("2","ração filhote","gato","p",30,"328");
INSERT INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("3","rémedio pulga","cachorro","g",12,"69");
INSERT INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("4","pato de pelúcia","cachorro","p",35,"15");
INSERT INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("5","Ração muito pica","cachorro","g",63,"49");
INSERT INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("6","Ração castrados","gato","g",80,"261");
INSERT INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("8","Frango de borracha","gato","p",29,"704");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("7","petisco carne","cachorro","g",30,"123");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("9","disco de plastico","cachorro","p",30,"43");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("10","escova para pelos compridos","gato","g",47,"21");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("11","Ração girassol","gato","p",60,"312");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("12","Bola","cachorro","g",25,"1421");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("13","Roupa iNverno","gato","g",30,"31");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("14","Roupa inverno","cachorro","p",40,"32");
insert INTO estoque(IDprod,nomeprod,tipo,porte,valor,quantidade)
VALUES ("15","Petisco muito incrivel","gato","g",5000,"2");

create user 'dba'@'localhost' identified by 'dba2023';
grant all privileges on *.* to 'dba'@'localhost';
flush privileges;

create user 'suporte01'@'localhost' identified by 'suporte2023';
grant create,select,insert,delete on petshop_carlao.estoque to 'suporte01'@'localhost';
flush privileges;

create user 'auxiliar'@'localhost' identified by 'auxiliar2023';
grant select,insert on petshop_carlao.estoque to 'auxiliar'@'localhost';
flush privileges;