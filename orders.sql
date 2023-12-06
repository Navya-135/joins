create schema orders;
create table orders.ex2(
id int not null,
name varchar(45)  not null,
address varchar(30) primary key
);

drop table orders.ex2;

select * from orders.ex2;

insert into orders.ex2( id, name, address) values(1, 'rajesh', 'budawada'), (2, 'aravind', 'gogulapadu');

create table orders.ex2a(
id  int primary key auto_increment,
name varchar(30) null,
price int null,
address varchar(40)
);

drop table orders.ex2a;

alter table orders.ex2a
add constraint fk foreign key (address) references orders.ex2a(address);

insert into orders.ex2a(name, price, address)
 values('kurthi', 3500, 'hyderabad'), 
 ('top', 500, 'banglore');
select * from orders.ex2a;

select * from orders.ex2 as usr 
inner join orders.ex2 as usrord on address = usrord.address;

select * from orders.ex2 as usr 
left join orders.ex2 as usrord on address = usrord.address;

select * from orders.ex2 as usr 
right join orders.ex2 as usrord on address = usrord.address;
