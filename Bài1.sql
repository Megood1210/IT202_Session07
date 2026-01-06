create database session7;
use session7;

create table customers (
    id int primary key,
    name varchar(100),
    email varchar(100)
);

create table orders (
    id int primary key,
    customer_id int,
    order_date date,
    total_amount decimal(12,2),
    foreign key (customer_id) references customers(id)
);

insert into customers values
(1, 'Nguyen Van A', 'a@gmail.com'),
(2, 'Tran Thi B', 'b@gmail.com'),
(3, 'Le Van C', 'c@gmail.com'),
(4, 'Pham Thi D', 'd@gmail.com'),
(5, 'Hoang Van E', 'e@gmail.com'),
(6, 'Do Thi F', 'f@gmail.com'),
(7, 'Bui Van G', 'g@gmail.com');

insert into orders values
(101, 1, '2024-01-05', 5000000),
(102, 2, '2024-01-06', 3000000),
(103, 1, '2024-01-10', 7000000),
(104, 3, '2024-01-12', 2000000),
(105, 4, '2024-01-15', 9000000),
(106, 2, '2024-01-18', 4000000),
(107, 5, '2024-01-20', 6000000);

select * from customers
where id in (
    select customer_id from orders
);