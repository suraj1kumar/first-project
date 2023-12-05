create database college;
use college;
drop database college;
create table student(id int,name varchar(50),sex varchar(50),
perecentage int,class int,section varchar(50), stream varchar(50),dob varchar(50));

insert into student(id,name,sex,perecentage,class,section,stream,dob)
values
(1001,"akshra agarwal","female",70,11,"A","science","10/08/1997"),
(1002,"anjani sharma","female",75,11,"A","commerce","18/09/1996"),
(1003,"anshul sexena","Male",78,11,"A","commerce","19/11/1996"),
(1004,"aishwarya singh","female",79,11,"A","commerce","1/11/1996"),
(1005,"akriti saxena","female",76,11,"A","commerce","20/09/1994"),
(1006,"khushi agarwal","female",77,11,"A","commerce","14/09/2023"),
(1007,"maahi agarwal","female",74,11,"A","science","12/04/1997"),
(1008,"mitali gupta","female",78,12,"A","science","26/11/1997"),
(1009,"nikund agarwal","female",58,12,"A","commerce","22/04/1997"),
(1012,"raghav gangwar","male",58,12,"A","commerce","21/12/1997"),
(1013,"sahil saraswat","male",57,12,"A","commerce","21/12/1997"),
(1014,"swati mishra","femal",98,11,"A","science","13/08/1997"),
(1015,"harsh agrawal","male",58,11,"B","science","28/08/2003"),
(1016,"harhit kumar","male",98,11,"B","science","22/05/2003"),
(1017,"jhanvi kapoor","male",65,11,"B","science","10/1/1997"),
(1018,"stuti mishra","male",66,11,"C","commerce","10/1/1996"),
(1019,"suryansh kumar agarwal","male",85,11,"C","commerce","22/08/2007"),
(1020,"tani rastogi","female",75,12,"C","commerce","15/01/1998"),
(1021,"tanishk guptan","male",55,12,"c","science","11/04/1998"),
(1022,"tanmay agarwal","male",57,11,"C","commerce","28/06/1998"),
(1023,"yash saxena","male",79,11,"C","science","13/3/1998"),
(1024,"yesh dubey","male",79,12,"C","commerce","3/4/1998");

select * from student;
select name,dob from student;
select name stream,perecentage from student where perecentage >80;
select name,stream,perecentage from student where perecentage>75;
select name,stream science ,perecentage from student where perencentage>75;

select stream,perecentage from student where perencentage>75;
select stream,perecentage from student where stream="commerce";
select stream ,perecentage from student where perecentage>75 and stream="science";
select stream ,perecentage from student where perecentage >75 and stream="commerce";
select stream ,perecentage from student where perecentage>70;

select * from student;
alter table student
add column teacherid varchar(50)  not null default 19;

select * from student;
select * from student order by perecentage desc;
select * from student order by perecentage asc;
select * from student order by name asc;
select * from student order by name desc;
alter table student
modify teacherid int;
alter table student
drop column teacherid;

select * from student;


update student
set perecentage=perecentage-5;

set sql_safe_updates=0;

select name ,dob from student;
select * from student where stream ="commerce";
select name,perecentage from student where perecentage between 60 and 80;

update student
set name="swati verma"
where name="swati mishra";
update student
set perecentage=86
where perecentage=93;

delete from student where id=1016;
select * from student;
select * from student where name like'g';
select * from student where name='g';
select * from student where name like'a%';
select * from student where name like '%a';
select * from student where name like 's%';

select * from student;

select name,sex,stream, perecentage from student where perecentage between 70 and 80;

create database employee;
drop database employee;
create database employee;
use employee;
create table worker(empno int,name varchar(50),job varchar(50),mgr int,hiredate varchar(50),salary int, comm varchar(50),deptno int);
insert into worker (empno,name,job,mgr,hiredate,salary,comm,deptno)
values
(8369,"smith","clerk",8902,"1990-12-18",800,null,20),
(8499,"anya","salesman",8698,"1991-02-22",1600,"300",30),
(8521,"seth","saleman",8698,"1991-02-22",1250,"500",30),
(8566,"Mahadevan","manager",8839,"1991-04-02",2985,null,20),
(8654,"momin","salesman",8698,"1991-09-28",1250,null,30),
(8698,"bina","manager",8839,"1991-12-09",2850,null,30),
(8882,"shivansh","manager",8839,"1991-06-09",2450,null,10),
(8888,"scott","analyst",8566,"1992-12-09",3000,null,20),
(8839,"amir","president",null,"1991-11-18",5000,null,10),
(8844,"kuldeep","salesman",8698,"1991-09-0",1500,0.00,30)

select name,salary from worker where salary >=2200;
 select * from worker where comm is null;
 select name,salary from worker where salary not between 2500 and 4000;
 select name,salary ,job from worker where mgr is null;
 select name from worker where substring(name ,3)="A";
 select name from worker where substring(name,1)="A";
 select * from worker where name="---a%"






