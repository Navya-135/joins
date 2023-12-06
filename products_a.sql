create schema products;

drop table products.ex;

alter table products.productspecification
drop foreign key useraddress_ibfk_1;

alter table products.productspecification
drop foreign key productspecification_ibfk_1;

create table products.ex(
id int primary key auto_increment,
name varchar(50)not null,
email varchar(50)not null,
phone int check(length(phone)=10),
country varchar(10) default('India')
);

alter table products.ex
add constraint ex_pk_id primary key(id);


alter table products.productspecification
add constraint fk_productspecification_ex_id foreign key(userid)references products.ex(id);

alter table products.ex
add constraint unique_name unique(name);

alter table products.ex
add constraint Chk_name_3 check(length(name)>=3);

alter table products.ex
drop check Chk_name_3;

alter table products.ex
drop index unique_name;

alter table products.ex modify name varchar(50) null; 

alter table products.ex add column quality varchar(20);

alter table products.ex modify quality varchar(10);

alter table products.ex drop column quality;
select * from products.ex;

create table products.productspecification(
id int primary key auto_increment,
item varchar(40) not null,
price int not null,
discount int not null,
userid int not null,
constraint foreign key productspecification_products_userid(userid)references products.ex(id)
);

select * from products.ex as usr
inner join products.productspecification as pds on usr.id=userid;

select * from products.ex as usr
left join products.productspecification as pds on usr.id=userid;

select * from products.ex as usr
right join products.productspecification as pds on usr.id=userid;

insert into products.ex(id,name,email,phone,country,id,item,price,discount)
values(1,'navya','n@gamil.com',1234567890,'dress',2000);