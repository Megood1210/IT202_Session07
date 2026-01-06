create database session7;
use session7;

select name,
    (
        select count(*) from orders
        where orders.customer_id = customers.id
    ) as total_orders
from customers;