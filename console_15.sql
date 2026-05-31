create table Customer (
                          id serial primary key,
                          name varchar(100),
                          email varchar(100),
                          phone varchar(20),
                          points int
);

insert into Customer (
    name,
    email,
    phone,
    points
)
values
    ('Nguyen Van An', 'an.nguyen@gmail.com', '0912345678', 120),
    ('Tran Thi Bich Ngoc', 'bichngoc.tran@gmail.com', '0987654321', 250),
    ('Le Minh Quan', 'quan.le@gmail.com', '0901122334', 80),
    ('Pham Thu Hang', 'hang.pham@gmail.com', '0933445566', 300),
    ('Vo Duc Tai', 'tai.vo@gmail.com', '0977889900', 50),
    ('Hoang Gia Bao', 'bao.hoang@gmail.com', '0966112233', 180),
    ('Dang Minh Khoa', '', '0944556677', 210);

select distinct name
from Customer;

select name from Customer
where email isnull;

select * from Customer
order by points desc limit 3 offset 1;

select * from Customer
order by name desc;
