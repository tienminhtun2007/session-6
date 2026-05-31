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


create table CUSTOMER(
    id serial primary key,
    name VARCHAR(100)
);

select c.name, sum(o.total_amount) as total_buy from CUSTOMER c
inner join Orders o on o.customer_id = c.id
group by c.name;

select
    c.name as customer_name,
    sum(o.total_amount) as total_spent
from Customer as c
         join Orders as o
              on c.id = o.customer_id
group by c.id, c.name
having sum(o.total_amount) = (
    select max(total_spent)
    from (
             select
                 customer_id,
                 sum(total_amount) as total_spent
             from Orders
             group by customer_id
         ) as customer_totals
);

select
    c.id as customer_id,
    c.name as customer_name,
from Customer as c
         left join Orders as o
                   on c.id = o.customer_id
where o.id is null;

select
    c.name as customer_name,
    sum(o.total_amount) as total_spent
from Customer as c
         join Orders as o
              on c.id = o.customer_id
group by c.id, c.name
having sum(o.total_amount) > (
    select avg(total_spent)
    from (
             select
                 customer_id,
                 sum(total_amount) as total_spent
             from Orders
             group by customer_id
         ) as customer_totals
);
