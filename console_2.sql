create table Orders (
                        id serial primary key,
                        customer_id int,
                        order_date date,
                        total_amount numeric(10,2)
);
insert into Orders (
    customer_id,
    order_date,
    total_amount
)
values
    (1, '2024-01-15', 1500000.00),
    (2, '2024-02-10', 250000.00),
    (3, '2024-03-05', 3200000.00),
    (1, '2024-04-20', 800000.00),
    (4, '2024-05-12', 1200000.00),
    (5, '2024-06-08', 5000000.00);

select SUM(Orders.total_amount) as total_revenue, count(Orders.customer_id) as total_orders, avg(Orders.total_amount)
from Orders;

select SUM(Orders.total_amount) as total_revenue
from Orders
group by extract(year from order_date)
having SUM(Orders.total_amount) > 50000000;

select * from Orders
order by total_amount desc limit 5;
