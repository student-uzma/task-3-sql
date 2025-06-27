use bankemp;
create table student (
 stu_id INT PRIMARY KEY,
 stu_name varchar(50),
 place varchar(50),
 department varchar(50));
 
 insert into student(stu_id,stu_name,place,department)
 values(101,'zoya','pune','computer');
 
 insert into student(stu_id,stu_name,place,department)
 values(102,'riya','mumbai','computer science');
 
 insert into student(stu_id,stu_name,place,department)
 values(103,'priya','kolhapur','mechanical');
 
  insert into student(stu_id,stu_name,place,department)
 values(104,'uzma','sawantwadi','electrical');
 
 -- select student table
 select * from student;
 
 
 select place from student
 where stu_id=101;
 
 -- select statement with distinct
 select distinct department from student;
 
 -- select statement with order by clause
 select stu_name from student
 order by stu_name asc;
 
 -- select statement with limit clause
 select stu_id from student
 limit 2;
 
 
 -- select statement with and operator
 select stu_name from student
 where place='pune' and department='computer';
 
 -- select statement with or operator
 select stu_name from student
 where place='pune' or department='computer science';
 
 
 -- select statement with like operator
 select stu_name from student
 where stu_name like 'z%';
 
 
 -- select statement with between operator
 select * from student
 where stu_id between '101' and '104' ;
 
 alter table student
 add roll_no int;
 
 show tables;
 
 select * from student;
 
 UPDATE student
SET roll_no = 4
WHERE stu_id = 101

 UPDATE student
SET roll_no = 5
WHERE stu_id = 102;

UPDATE student
SET roll_no = 6
WHERE stu_id = 104;

-- sum aggregate function
select sum(roll_no) from student;

-- sum aggregate function with where clause
select sum(roll_no) from student 
where stu_name = 'priya';

alter table student
 add marks int;
 
 UPDATE student
SET marks = 50
WHERE stu_id = 101;

UPDATE student
SET marks = 50
WHERE stu_id = 102;

UPDATE student
SET marks = 60
WHERE stu_id = 104;
 
alter table student
add subject varchar(50); 

update student
set subject = 'english'
where stu_id = 104;

select * from student;

-- sum aggregate function with where clause
select sum(marks) from student
where subject = 'maths';