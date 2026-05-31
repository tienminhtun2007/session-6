create table Course (
                        id serial primary key,
                        title varchar(100),
                        instructor varchar(50),
                        price numeric(10,2),
                        duration int
);

insert into Course (
    title,
    instructor,
    price,
    duration
)
values
    ('SQL Basic', 'Nguyen Van An', 600000, 20),
    ('Advanced SQL', 'Tran Minh Quan', 1500000, 35),
    ('Java Programming', 'Le Quoc Cuong', 2500000, 40),
    ('Python Demo Course', 'Pham Thu Hang', 400000, 15),
    ('Database Design', 'Vo Duc Tai', 1800000, 32),
    ('SQL for Data Analysis', 'Hoang Gia Bao', 1200000, 28),
    ('Web Development Demo', 'Dang Minh Khoa', 900000, 25);

update Course
set price = price * 1.15
where duration > 30;

delete from Course
where title ilike '%Demo%';

select *
from Course
where title ilike '%SQL%';

select *
from Course
where price between 500000 and 2000000
order by price desc
limit 3;