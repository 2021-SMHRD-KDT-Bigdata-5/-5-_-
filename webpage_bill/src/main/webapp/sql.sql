CREATE USER BOSSAM IDENTIFIED BY 123;

GRANT CONNECT, DBA, RESOURCE TO BOSSAM;

create table member(
farm_name varchar2(50),
email varchar2(50),
pw varchar2(50),
product varchar2(50),
primary key(farm_name)
);

create table book(
b_name varchar2(50),
b_tel varchar2(50),
b_date varchar2(50),
b_time varchar2(50),
farm_name varchar2(50),
CONSTRAINT check CHECK(farm_name));


select * from book;