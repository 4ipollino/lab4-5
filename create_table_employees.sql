drop table if exists employee;
 -- создание таблицы
create table employee(id integer, first_name varchar(20), last_name varchar(20), designation varchar(20), phone varchar(20));
-- вставка тестовых данных
insert into employee values (1, 'Ivan', 'Ivanov', 'Manager', '211-22-33');
insert into employee values (2, 'Nikolay', 'Ivanov', 'Programmer', '233-44-55');
insert into employee values (3, 'Sergey', 'Petrov', 'System administrator', '212-34-56');
insert into employee values (4, 'Alexey', 'Petrov', 'Manager', '256-78-90');
insert into employee values (5, 'Vitaliy', 'Kuznetsov', 'Technician', '355-66-77');
COMMIT;
-- выбрать все из таблицы для проверки
select * from employee;