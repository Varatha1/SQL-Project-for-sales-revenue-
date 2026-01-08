

use projec1;

select date_format(order_date,'%Y-%M') as month, sum(total_amount) as sales 
from orders
group by month
order by month;

