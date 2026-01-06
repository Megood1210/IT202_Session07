create database session7;
use session7;

select * from orders
where total_amount > (
    select avg(total_amount) from orders
);