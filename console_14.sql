CREATE TABLE Employee (
                          id SERIAL PRIMARY KEY,
                          full_name VARCHAR(100),
                          department VARCHAR(50),
                          salary NUMERIC(10,2),
                          hire_date DATE
);

INSERT into Employee (full_name, department, salary, hire_date) VALUES ('Nguyen Van An', 'IT', 15000000, '2022-01-15'),
                                                                       ('Tran Thi Bich', 'Human Resources', 12000000, '2021-06-20'),
                                                                       ('Le Minh Quan', 'Finance', 18000000, '2020-09-10'),
                                                                       ('Pham Thu Hang', 'Marketing', 14000000, '2023-03-05'),
                                                                       ('Vo Duc Tai', 'IT', 20000000, '2019-11-25'),
                                                                       ('Hoang Gia Bao', 'Sales', 13000000, '2022-08-12');

update Employee
set salary = salary * 1.10
where department = 'IT';

delete from Employee
where salary  < 6000000;

select * from Employee
where full_name ilike '%An%';

select * from Employee
where hire_date between '2023-01-01' and '2023-12-31';