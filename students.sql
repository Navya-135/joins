create schema student;
create table student.ex1(
id int primary key auto_increment,
stname  varchar(30) null,
rollno  int not null,
stclass int null,
stcountry varchar(40) default ('india')
);
drop table student.ex1;


create table student.teacher(
id int primary key auto_increment,
tname varchar(30) null,
tsubject varchar(30) not null,
taddress varchar(50) null


);
drop table student.teacher;
select * from student.teacher;
alter table student.teacher
add column student_id int;

alter table student.teacher
add constraint stu_id foreign key(student_id) references student.ex1(id);
	
insert into student.ex1(stname, rollno, stclass) values('navya', 39, 'b-tech'),('Mahlaya', 66, 10), ('pranathi', 7, 8),('Sandhya',5,8);
select * from student.ex1;

insert into student.teacher(tname, tsubject, taddress) values('Manga', 'Hindi', 'Guntur'),('prasad', 'Maths', 'Nellore'),('anjali','English','Dachepalli');

select * from student.ex1 as stu
inner join student.teacher as tech on stu.id = tech.student_id;

select * from student.ex1 as stu
left join student.teacher as tech on stu.id = tech.student_id;

select * from student.ex1 as stu
right join student.teacher as tech on stu.id = tech.student_id;

