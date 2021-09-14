REM   Script: Session 04
REM   20210912

CREATE SEQUENCE customers_seq 
 START WITH 1000 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

CREATE SEQUENCE DASID 
 START WITH A82000 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

 CREATE TABLE employee 
(  
ID number(10), 
NAME char(20) 
);

CREATE SEQUENCE EMPID 
 START WITH 56820000 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

CREATE SEQUENCE EMPID 
 START WITH 56820000 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

 CREATE TABLE employee 
(  
ID number(10), 
NAME char(20) 
);

INSERT into students VALUES(EMPID.nextval,'Ramesh');

CREATE SEQUENCE EMPID 
 START WITH 56820000 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

 CREATE TABLE employee 
(  
ID number(10), 
NAME char(20) 
);

INSERT into students VALUES(EMPID.nextval,'Giri');

INSERT into students VALUES(EMPID.nextval,'Giri');

INSERT into employee VALUES(EMPID.nextval,'Giri');

INSERT into employee VALUES(EMPID.nextval,'Prasad');

INSERT into employee VALUES(EMPID.nextval,'Anamika');

select EMPID.currval FROM dual;

select EMPID.nextval FROM dual;

select EMPID.currval FROM dual;

SELECT TO_DATE('31-AUG-2004','DD-MON-YYYY') + TO_YMINTERVAL('0-1') 
 FROM DUAL;

SELECT TO_DATE('29-FEB-2004','DD-MON-YYYY') + TO_YMINTERVAL('1-0') 
 FROM DUAL;

SELECT TO_DATE('29-FEB-2004','DD-MON-YYYY') + TO_YMINTERVAL('1-0') 
 FROM DUAL;

SELECT TO_DATE('2-FEB-2004','DD-MON-YYYY') + TO_YMINTERVAL('1-0') 
 FROM DUAL;

SELECT TO_DATE('29-FEB-2020, 'DD-MON-YYYY') + TO_YMINTERVAL('4-0') 
 FROM DUAL;

SELECT TO_DATE('29-FEB-2020', 'DD-MON-YYYY') + TO_YMINTERVAL('4-0') 
 FROM DUAL;

SELECT TO_DATE('29-FEB-2020', 'DD-MON-YYYY') + TO_YMINTERVAL('4-0') "DATE" 
 FROM DUAL;

CREATE SEQUENCE ORDID 
 START WITH 20210900001 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

CREATE TABLE OrderDetails 
( 
ord_ID number(12), 
ord_date datetime 
);

CREATE SEQUENCE ORDID 
 START WITH 20210900001 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

CREATE TABLE OrderDetails 
( 
ord_ID number(12), 
ord_date date 
);

CREATE TABLE OrderDetails 
( 
ord_ID number(12), 
ord_date date 
);

CREATE SEQUENCE ORDID 
 START WITH 20210900001 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

CREATE TABLE OrderDetails 
( 
ord_ID number(12), 
ord_date date 
);

 insert into OrderDetails values(ORDID.nextval, curdate());

 insert into OrderDetails values(ORDID.nextval, curdate());

insert into OrderDetails values(ORDID.nextval, getdate());

CREATE SEQUENCE ORDID 
 START WITH 20210900001 
 INCREMENT BY 1 
 NOCACHE 
 NOCYCLE;

CREATE TABLE OrderDetails 
( 
ord_ID number(12), 
ord_date date 
);

 insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

insert into OrderDetails values(ORDID.nextval, sysdate);

SELECT ord_id, ord_date + INTERVAL '30' DAY AS "Due Date" 
 FROM orderDetails 
 ORDER BY ord_id, "Due Date";

 SELECT ord_id, ord_date + INTERVAL '3' DAY AS "Due Date" 
 FROM orderDetails 
 ORDER BY ord_id, "Due Date";

 SELECT ord_id, EXTRACT(DAY FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' days ' 
 || EXTRACT(HOUR FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' hours'  
|| EXTRACT(MINUTE FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' seconds' "Interval" 
 FROM OrderDetails;

 SELECT ord_id, EXTRACT(DAY FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' days ' 
 || EXTRACT(HOUR FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' hours '  
|| EXTRACT(MINUTE FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' seconds' "Interval" 
 FROM OrderDetails;

 SELECT ord_id, EXTRACT(DAY FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' days ' 
 || EXTRACT(HOUR FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' hours '  
|| EXTRACT(MINUTE FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' seconds' "Interval" 
 FROM OrderDetails;

 SELECT ord_id, EXTRACT(DAY FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' days ' 
 || EXTRACT(HOUR FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' hours '  
|| EXTRACT(SECOND FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' Minutes ' 
|| EXTRACT(MINUTE FROM (SYSDATE - ord_date) DAY TO SECOND) 
 || ' Seconds ' "Interval" 
 FROM OrderDetails;

SELECT 2 * 1.23, 3 * '2,34' FROM DUAL;

SELECT 2 * 1.23, 3 * 2.34 FROM DUAL;

SELECT 2 * 1.23, 3 * 2 34 FROM DUAL;

SELECT 2 * 1.23, 3 * 2 65+34 FROM DUAL;

SELECT 2 * 1.23, 3 * 2, 65+34 FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9 FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9, 9%9, 9^2 FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9, 9-9, 9^2 FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9, 9-9, 9^2, FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9, 9-9 
FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9, 9-9, 9%9 
FROM DUAL;

SELECT 9 * 9, 9 * 9.9, 9/9, 9-9, 9+9 
FROM DUAL;

SELECT 9 * 9, 9.9 * 9.9, 9/9, 9-9, 9+9 
FROM DUAL;

SELECT 9 + 9, 9.9 * 9.9, 9-9, 9/9 FROM DUAL;

SELECT +6.35 FROM DUAL;

SELECT 25e-03 FROM DUAL;

SELECT 25f FROM DUAL;

SELECT -10D FROM DUAL;

SELECT -1000D FROM DUAL;

SELECT 1000D FROM DUAL;

SELECT 3.14D FROM DUAL;

SELECT 3.14f FROM DUAL;

create table DEPARTMENTS (   
  deptno        number,   
  name          varchar2(50) not null,   
  location      varchar2(50),   
  constraint pk_departments primary key (deptno)   
);

create table EMPLOYEES (   
  empno             number,   
  name              varchar2(50) not null,   
  job               varchar2(50),   
  manager           number,   
  hiredate          date,   
  salary            number(7,2),   
  commission        number(7,2),   
  deptno           number,   
  constraint pk_employees primary key (empno),   
  constraint fk_employees_deptno foreign key (deptno)  
      references DEPARTMENTS (deptno)   
);

create or replace trigger  DEPARTMENTS_BIU 
    before insert or update on DEPARTMENTS 
    for each row 
begin 
    if inserting and :new.deptno is null then 
        :new.deptno := to_number(sys_guid(),  
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

create or replace trigger EMPLOYEES_BIU 
    before insert or update on EMPLOYEES 
    for each row 
begin 
    if inserting and :new.empno is null then 
        :new.empno := to_number(sys_guid(),  
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

select * from departments;

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Sam Smith','Programmer',  
    5000,  
  (select deptno  
  from departments  
  where name = 'Development'));

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Mara Martin','Analyst',  
   6000,  
   (select deptno  
   from departments  
   where name = 'Finance'));

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Yun Yates','Analyst',  
   5500,  
   (select deptno  
   from departments  
   where name = 'Development'));

select table_name "Table",  
       index_name "Index",  
       column_name "Column",  
       column_position "Position" 
from  user_ind_columns  
where table_name = 'EMPLOYEES' or  
      table_name = 'DEPARTMENTS' 
order by table_name, column_name, column_position 
;

create index employee_dept_no_fk_idx  
on employees (deptno) 
;

create unique index employee_ename_idx 
on employees (name) 
;

select * from employees;

select e.name employee, 
           d.name department, 
           e.job, 
           d.location 
from departments d, employees e 
where d.deptno = e.deptno(+) 
order by e.name;

alter table EMPLOYEES  
add country_code varchar2(2);

select table_name, tablespace_name, status 
from user_tables 
where table_Name = 'EMPLOYEES';

select column_id, column_name , data_type 
from user_tab_columns 
where table_Name = 'EMPLOYEES' 
order by column_id;

update employees 
set country_code = 'IN';

update employees 
set commission = 2000 
where  name = 'Sam Smith';

select name, country_code, salary, commission 
from employees 
order by name;

select  
      count(*) employee_count, 
      sum(salary) total_salary, 
      sum(commission) total_commission, 
      min(salary + nvl(commission,0)) min_compensation, 
      max(salary + nvl(commission,0)) max_compensation 
from employees;

alter table EMPLOYEES compress for oltp;

alter table DEPARTMENTS compress for oltp;

delete from employees  
where name = 'Sam Smith';

drop table departments cascade constraints;

drop table employees cascade constraints;

select object_name,  
       original_name,  
       type,  
       can_undrop,  
       can_purge 
from recyclebin;

flashback table DEPARTMENTS to before drop


flashback table EMPLOYEES to before drop


select count(*) departments  
from departments;

select count(*) employees 
from employees;

