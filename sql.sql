SQL = Structured Query LANGUAGE
- it is a programming language which is used to communicate with the RDBMS
RDBMS = relational data base management system
* it is a storage tool where we can perform CRUD opration
 - CREATE
 - READ
 - UPDATE
 - DELETE
* data is permanent
* external tool
* famous Db -
      -oracle
      -Mysql
      -Mongodb

ORM frameworks - object relational mapping
-these are frameworks that will like send / receives objects from OOPS type languages from /to database

MYSQL:-
*-MYSQL server where we going to save the data
*-MYSQL SOFTWARE which helps to save the data
*-MYSQL CLIENT which connects server and the software

username = root ,pass = root,  host = localhost,   port=3306

* CREATE DATABASE -
CREATE DATABASE EMP;
CREATE DATABASE STUDENT ;

* TO CHECK WHICH DATABASE  I HAVE USE -
SHOW DATABSES ;

* TO DELETE THE DATABASE
DROP DATABASE DB_NAME;

* SQL IS NON CASE SENSITIVE
* TO USE THE DATABASE USE
USE DB_NAME;

*TO GET THE GENERAL INFO ABOUT DATABASE USE
\S;
* MAKE A TABLE IN DATABASE
CREATE TABLE TABLE_NAME(COLUMN1, COLUMN 2 ...)
EXAMPLE -
( ID NAME SALARY INCR )
CREATE TABLE EMP_INFO(
    EMP_ID INT NOT NULL UNIQUE,
    EMP_NAME VARCHAR(30),
    EMP_SALARY FLOAT,
    EMP_INCR FLOAT,
);

* INSERT DATA
INSERT INTO TBL_NAME VALUES(VALUE 1 ,VALUE 2);

* LIST ALL ELEMENT
SELECT * FROM TBL_NAME;

* TO GET THE LIST OF ALL TABLES IN DATABASE WE USE
SHOW TABLES;

* MYSQL CLAUSES
- WHERE
- AND
- OR
- IS
- IS NULL
- IS NOT NULL
- UNIQUE
- DISTINCT

example =
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| alumnidb           |
| emp                |
| information_schema |
| med_db             |
| mysql              |
| performance_schema |
| sample             |
| student            |
| sys                |
+--------------------+


mysql> use emp
Database changed
mysql> show tables;
+---------------+
| Tables_in_emp |
+---------------+
| emp_info      |
+---------------+


mysql> insert into emp_info values(3,'maya',5789,2);
Query OK, 1 row affected (0.35 sec)

mysql> insert into emp_info values(4,'harsh',4567,34);
Query OK, 1 row affected (0.18 sec)

mysql> insert into emp_info values(5,'nut',563789,93);
Query OK, 1 row affected (0.16 sec)

mysql> desc emp_info;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| EMP_ID     | int         | YES  |     | NULL    |       |
| EMP_NAME   | varchar(30) | YES  |     | NULL    |       |
| EMP_SALARY | float       | YES  |     | NULL    |       |
| EMP_INCR   | float       | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+


mysql> select * from emp_info;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
|      3 | maya     |       5789 |        2 |
|      4 | harsh    |       4567 |       34 |
|      5 | nut      |     563789 |       93 |
+--------+----------+------------+----------+




mysql> select * from emp_info where Emp_salary=1000000;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
+--------+----------+------------+----------+


mysql> select * from emp_info where Emp_salary in(1000000,563489,4567);
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
|      4 | harsh    |       4567 |       34 |
+--------+----------+------------+----------+


mysql> select * from emp_info where Emp_salary between 1000 and 6000;


- LIKE ##EXAMPLE = LIKE('M%') START WITH
                   LIKE('%M') END WITH
                   LIKE('%M%') IN BETWEEN
                   LIKE('_A%') - SECOND POSITION
 mysql> select * from emp_info where emp_name like 'm%';
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      3 | maya     |    1000000 |        2 |
+--------+----------+------------+----------+


mysql> select * from emp_info where emp_name like '%h';
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      2 | RITESH   |    1000000 |       10 |
|      4 | harsh    |       4567 |       34 |
+--------+----------+------------+----------+

mysql> select * from emp_info where emp_name like '%t%';
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      2 | RITESH   |    1000000 |       10 |
|      5 | nut      |     563789 |       93 |
+--------+----------+------------+----------+

-BETWEEN
mysql> select * from emp_info where Emp_salary between 1000 and 6000;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      3 | maya     |       5789 |        2 |
|      4 | harsh    |       4567 |       34 |
+--------+----------+------------+----------+

-order by (it will give in acceding )
if i want decenting use

mysql> select * from emp_info order by emp_salary;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      4 | harsh    |       4567 |       34 |
|      3 | maya     |       5789 |        2 |
|      5 | nut      |     563789 |       93 |
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
+--------+----------+------------+----------+


-order by decenting
mysql> select * from emp_info order by emp_salary desc;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
|      5 | nut      |     563789 |       93 |
|      3 | maya     |       5789 |        2 |
|      4 | harsh    |       4567 |       34 |
+--------+----------+------------+----------+

-order by column
mysql> select * from emp_info order by emp_name;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      4 | harsh    |       4567 |       34 |
|      3 | maya     |       5789 |        2 |
|      5 | nut      |     563789 |       93 |
|      2 | RITESH   |    1000000 |       10 |
+--------+----------+------------+----------+
mysql> select * from emp_info order by 3,2;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      4 | harsh    |       4567 |       34 |
|      5 | nut      |     563789 |       93 |
|      1 | DIGVIJAY |    1000000 |       10 |
|      3 | maya     |    1000000 |        2 |
|      2 | RITESH   |    1000000 |       10 |
+--------+----------+------------+----------+

mysql> select * from emp_info order by 5;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      2 | RITESH   |    1000000 |       10 | account |
|      5 | nut      |     563789 |       93 | account |
|      3 | maya     |    1000000 |        2 | dev     |
|      4 | harsh    |       4567 |       34 | dev     |
|      1 | DIGVIJAY |    1000000 |       10 | IT      |
+--------+----------+------------+----------+---------+

mysql> select emp_name, emp_salary, dept from emp_info order by dept;
+----------+------------+---------+
| emp_name | emp_salary | dept    |
+----------+------------+---------+
| RITESH   |    1000000 | account |
| nut      |     563789 | account |
| maya     |    1000000 | dev     |
| harsh    |       4567 | dev     |
| DIGVIJAY |    1000000 | IT      |
+----------+------------+---------+


-* UPDATE
to change any field of matvhing row
update emp_info set emp_salary = 1000000 where emp_id = 3;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
|      3 | maya     |    1000000 |        2 |
|      4 | harsh    |       4567 |       34 |
|      5 | nut      |     563789 |       93 |
+--------+----------+------------+----------+

mysql> update emp_info set dept = 'account' where emp_name like '%T%';
mysql> select * from EMP_INFO;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      1 | DIGVIJAY |    1000000 |       10 | IT      |
|      2 | RITESH   |    1000000 |       10 | account |
|      3 | maya     |    1000000 |        2 | IT      |
|      4 | harsh    |       4567 |       34 | IT      |
|      5 | nut      |     563789 |       93 | account |
+--------+----------+------------+----------+---------+

mysql> update emp_info set dept = 'dev' where emp_name in('harsh','maya');
mysql> select * from EMP_INFO;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      1 | DIGVIJAY |    1000000 |       10 | IT      |
|      2 | RITESH   |    1000000 |       10 | account |
|      3 | maya     |    1000000 |        2 | dev     |
|      4 | harsh    |       4567 |       34 | dev     |
|      5 | nut      |     563789 |       93 | account |
+--------+----------+------------+----------+---------+

*-alter
mysql> alter table emp_info add dept varchar(30);
mysql> select * from EMP_INFO;
+--------+----------+------------+----------+------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept |
+--------+----------+------------+----------+------+
|      1 | DIGVIJAY |    1000000 |       10 | NULL |
|      2 | RITESH   |    1000000 |       10 | NULL |
|      3 | maya     |    1000000 |        2 | NULL |
|      4 | harsh    |       4567 |       34 | NULL |
|      5 | nut      |     563789 |       93 | NULL |
+--------+----------+------------+----------+------+

-remove column
mysql> alter table emp_info drop column dept;
mysql> select * from EMP_INFO;
+--------+----------+------------+----------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR |
+--------+----------+------------+----------+
|      1 | DIGVIJAY |    1000000 |       10 |
|      2 | RITESH   |    1000000 |       10 |
|      3 | maya     |    1000000 |        2 |
|      4 | harsh    |       4567 |       34 |
|      5 | nut      |     563789 |       93 |
+--------+----------+------------+----------+


-default
mysql> alter table emp_info add dept varchar(30) default 'IT';
mysql> select * from EMP_INFO;
+--------+----------+------------+----------+------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept |
+--------+----------+------------+----------+------+
|      1 | DIGVIJAY |    1000000 |       10 | IT   |
|      2 | RITESH   |    1000000 |       10 | IT   |
|      3 | maya     |    1000000 |        2 | IT   |
|      4 | harsh    |       4567 |       34 | IT   |
|      5 | nut      |     563789 |       93 | IT   |
+--------+----------+------------+----------+------+


-*AS (temp change the column name)
mysql> select emp_name as x, emp_salary as y , dept as z from emp_info order by dept;
+----------+---------+---------+
| x        | y       | z       |
+----------+---------+---------+
| RITESH   | 1000000 | account |
| nut      |  563789 | account |
| maya     | 1000000 | dev     |
| harsh    |    4567 | dev     |
| DIGVIJAY | 1000000 | IT      |
+----------+---------+---------+

-*group by
mysql> select dept ,count(dept) from emp_info group by dept;
+---------+-------------+
| dept    | count(dept) |
+---------+-------------+
| IT      |           1 |
| account |           2 |
| dev     |           2 |
+---------+-------------+

* MYSQL IN-BUILD FUNCTIONS
-count
mysql> select count(dept) from emp_info;
+-------------+
| count(dept) |
+-------------+
|           5 |
+-------------+
mysql> select dept, count(dept) as total_members from emp_info group by dept;
+---------+---------------+
| dept    | total_members |
+---------+---------------+
| IT      |             2 |
| account |             2 |
| dev     |             2 |
+---------+---------------+


**DDL - Data Defination LANGUAGE (where schema/memeory/structure will change)
**DML - Data Manipulation language (where schema/memeory/structure will not change)
**DQL - Data query language - select, show, desc
**DCL - DAta COntrol language  - grant or revoke access
**DTXL - Data Transaction language - commit and rollback

-max
1 -  highest emp_salary
mysql> select max(emp_salary) from emp_info;
+-----------------+
| max(emp_salary) |
+-----------------+
|         1000000 |
+-----------------+

-min

mysql> select max(emp_salary),min(emp_salary),avg(emp_salary) from emp_info;
+-----------------+-----------------+-------------------+
| max(emp_salary) | min(emp_salary) | avg(emp_salary)   |
+-----------------+-----------------+-------------------+
|         1000000 |            4567 | 608059.3333333334 |
+-----------------+-----------------+-------------------+

-sum,avg

mysql> select max(emp_salary),min(emp_salary),avg(emp_salary),sum(emp_name) from emp_info;
+-----------------+-----------------+-------------------+---------------+
| max(emp_salary) | min(emp_salary) | avg(emp_salary)   | sum(emp_name) |
+-----------------+-----------------+-------------------+---------------+
|         1000000 |            4567 | 608059.3333333334 |             0 |
+-----------------+-----------------+-------------------+---------------+

2- second highest
SELECT MAX(EMP_SALARY) FROM EMP_INFO WHERE EMP_SALARY NOT IN (1000000);
+-----------------+
| MAX(EMP_SALARY) |
+-----------------+
|          563789 |
+-----------------+
-LIMIT
-OFFSET  BOTH WORK ON ROWS
mysql> select * from emp_info order by EMP_SALARY LIMIT 5;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      4 | harsh    |       4567 |       34 | dev     |
|      6 | darshe   |      80000 |       10 | it      |
|      5 | nut      |     563789 |       93 | account |
|      1 | DIGVIJAY |    1000000 |       10 | IT      |
|      2 | RITESH   |    1000000 |       10 | account |
+--------+----------+------------+----------+---------+


mysql> select * from emp_info order by EMP_SALARY DESC LIMIT 5;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      1 | DIGVIJAY |    1000000 |       10 | IT      |
|      2 | RITESH   |    1000000 |       10 | account |
|      3 | maya     |    1000000 |        2 | dev     |
|      5 | nut      |     563789 |       93 | account |
|      6 | darshe   |      80000 |       10 | it      |
+--------+----------+------------+----------+---------+


mysql> select * from emp_info order by EMP_SALARY DESC LIMIT 2;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      1 | DIGVIJAY |    1000000 |       10 | IT      |
|      2 | RITESH   |    1000000 |       10 | account |
+--------+----------+------------+----------+---------+

mysql> select * from emp_info order by EMP_SALARY DESC LIMIT 2 OFFSET 3;
+--------+----------+------------+----------+---------+
| EMP_ID | EMP_NAME | EMP_SALARY | EMP_INCR | dept    |
+--------+----------+------------+----------+---------+
|      5 | nut      |     563789 |       93 | account |
|      6 | darshe   |      80000 |       10 | it      |
+--------+----------+------------+----------+---------+

-SECOND HIGHEST
mysql> SELECT DISTINCT EMP_SALARY FROM EMP_INFO ORDER BY 1 DESC LIMIT 1 OFFSET 1;
+------------+
| EMP_SALARY |
+------------+
|     563789 |
+------------+


FETCHING
SQL INJECTION
PREPARE STATEMENT
STORED PROCEDURE
JONS LEFT RIGHT INNER
INDEXING

