create schema employee;

create table employee.ex3(
id int primary key auto_increment,
name varchar(45)not null,
address varchar(45)
);

drop table employee.ex3a;

 insert into employee.ex3(id,name,address)values(1,'navya','Guntur'),(2,'Rajesh','Hyderabad');
 
 select * from employee.ex3;
 
 create table employee.ex3a(
 id  int primary key auto_increment,
name varchar(30) null,
profession varchar(50) not null,
address varchar(40)
);

insert into employee.ex3a(id,name,profession,address)values(1,'Rana','doctor','Dachepalli'),(2,'arvaind','navy','mumbai');

select * from employee.ex3a;


alter table employee.ex3
add constraint unique_name unique(name);

alter table employee.ex3
drop index unique_name;

alter table employee.ex3
add constraint employee_pk_id primary key(id);

alter table employee.ex3a
add constraint fk_ex3a_ex3_id foreign key(id)references employee.ex3(id);

alter table employee.ex3a
drop foreign key ex3a_ibfk_1;

select * from employee.ex3 as emps
inner join employee.ex3a as empees on emps.id=empees.employee_id;
