

select c.customer_id, c.name_s, sum(o.total_amount) as revenue
from customer c
join orders O ON c.customer_id = o.customer_id
group by c.customer_id, c.name_s
order by revenue desc 
limit 10;
