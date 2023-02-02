--Вывести все поля и все строки.
select * from students;

--Вывести только Id пользователей
select id from students;

--Вывести только имя пользователей
select name from students;

--Вывести только email пользователей
select email from students;

--Вывести имя и email пользователей
select name, email  from students;

--Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on from students;

--Вывести пользователей где password 12333
select name, password from students 
where password like '12333';

--Вывести пользователей которые были созданы 2021-03-26 00:00:00
select name, created_on
from students
where created_on = '2021-03-26 00:00:00.000';

--Вывести пользователей где в имени есть слово Анна
select name from students
where name like '%Anna%';

--Вывести пользователей где в имени в конце есть 8
select name from students
where name like '%8';

--Вывести пользователей где в имени в есть буква а
select name from students
where name like '%a%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00
select name, created_on
from students
where created_on = '2021-07-12 00:00:00.000';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name, created_on, password 
from students
where created_on = '2021-07-12 00:00:00.000'
and password = '1m313' ;

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select name, created_on
from students
where created_on = '2021-07-12 00:00:00.000'
and name like '%Andrey%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name, created_on
from students
where created_on = '2021-07-12 00:00:00.000'
and name like '%8';

--Вывести пользователя у которых id равен 110
select name, id from students
where id = 110;

--Вывести пользователя у которых id равен 153
select name, id from students
where id = 153;

--Вывести пользователя у которых id больше 140
select name, id from students
where id > 140;

--Вывести пользователя у которых id меньше 130
select name, id from students
where id < 130;

--Вывести пользователя у которых id меньше 127 или больше 188
select name, id from students
where id < 127 or id > 188;

--Вывести пользователя у которых id меньше либо равно 137
select name, id from students
where id <= 137;

--Вывести пользователя у которых id больше либо равно 137
select name, id from students
where id >= 137;

--Вывести пользователя у которых id больше 180 но меньше 190
select name, id from students
where id > 180 and id < 190;

--Вывести пользователя у которых id между 180 и 190
select name, id from students
where id between 180 and 190;

--Вывести пользователей где password равен 12333, 1m313, 123313
select name, password from students
where password in ('12333', '1m313', '123313');

--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on
from students
where created_on in ('2020-10-03 00:00:00.000', '2021-05-19 00:00:00.000', '2021-03-26 00:00:00.000');

--Вывести минимальный id 
select min(id)from students;

--Вывести максимальный.
select max(id)from students;

--Вывести количество пользователей
select count(name) from students; 

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id, name, created_on
from students
order by created_on;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on
from students
order by created_on desc;

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary 
from employees 
join salary
on employees.id = salary.id;

-- Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary 
from employees join salary
on employees.id = salary.id
where monthly_salary < 2000;

-- Вывести всех работников с названиями их должности.
select employees.employee_name,  roles.role_name 
from employees join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id;

-- Вывести имена и должность только Java разработчиков.
select employees.employee_name,  roles.role_name 
from employees join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- Вывести имена и зарплаты Junior специалистов
select employees.employee_name,  salary.monthly_salary  
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on employee_salary.id = salary.id 
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Junior%';
