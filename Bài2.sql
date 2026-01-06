create database session7;
use session7;

create table products (
    id int primary key,
    name varchar(100),
    price decimal(12,2)
);

create table order_items (
    order_id int,
    product_id int,
    quantity int,
    primary key (order_id, product_id),
    foreign key (product_id) references products(id)
);

insert into products values
(1, 'Laptop', 20000000),
(2, 'Dien thoai', 15000000),
(3, 'Tai nghe', 2000000),
(4, 'Chuot', 500000),
(5, 'Ban phim', 1200000),
(6, 'Man hinh', 7000000);

insert into order_items values
(101, 1, 1),
(101, 3, 2),
(102, 2, 1),
(103, 5, 1),
(104, 1, 1),
(105, 6, 1);

select * from products
where id in (
    select product_id
    from order_items
);