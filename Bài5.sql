create database session7;
use session7;

select name from customers
where id = (
    select customer_id from orders
    group by customer_id
    having sum(total_amount) = (
        select max(total_spent)
        from (
            select sum(total_amount) as total_spent from orders
            group by customer_id
        ) as t
    )
);