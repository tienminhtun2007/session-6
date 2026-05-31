create table OrderInfo (
                           id serial primary key,
                           customer_id int,
                           order_date date,
                           total numeric(10,2),
                           status varchar(20)
);

insert into OrderInfo (
    customer_id,
    order_date,
    total,
    status
)
values
    (1, '2024-01-15', 1500000.00, 'Completed'),
    (2, '2024-02-10', 250000.00, 'Pending'),
    (3, '2024-03-05', 3200000.00, 'Completed'),
    (1, '2024-04-20', 800000.00, 'Cancelled'),
    (4, '2024-05-12', 1200000.00, 'Pending');

select * from OrderInfo
where total > 500000;


select * from OrderInfo
where extract(month from order_date) = 10;

select * from OrderInfo
where status != 'Completed';

select * from OrderInfo
order by extract(month from order_date) desc limit 2;