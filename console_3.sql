create table Department (
                            id serial primary key,
                            name varchar(50)
);

create table Employee (
                          id serial primary key,
                          full_name varchar(100),
                          department_id int,
                          salary numeric(10,2)
);

select e.full_name, d.name from Employee e
inner join Department d on d.id = e.department_id;

select avg(e.salary) as avg_salary, d.name from Employee e
inner join Department d on d.id = e.department_id
group by d.name
having  avg(e.salary) > 10;

select d.name from Department d
left join Employee e on d.id = e.department_id
where e.id isnull;