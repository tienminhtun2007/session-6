CREATE TABLE Product (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(100),
                         category VARCHAR(50),
                         price NUMERIC(10,2),
                         stock INT
);
insert into Product (name, category, price, stock)
values (('Laptop Dell Inspiron', 'Điện tử', 15000000, 10),
        ('Chuột Logitech M90', 'Điện tử', 150000, 50),
        ('Bàn phím cơ Razer', 'Điện tử', 2500000, 20),
        ('Tủ lạnh LG', 'Gia dụng', 9000000, 5),
        ('Máy giặt Samsung', 'Gia dụng', 12000000, 3));

select * from Product;

select * from Product
order by price desc limit 3;

select * from Product
where category = 'Điện tử' and price < 10000000;

select * from Product
order by stock;