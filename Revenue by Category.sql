


select p.category, sum(oi.quantity*oi.item_price) as revenue
from orders_items oi
join product p on oi.product_id = p.product_id
group by p.category;
