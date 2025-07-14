-- Identify the most common pizza size ordered.

select p.size ,
count(o.order_id) as total_count
from pizzas as p
join order_details as ot
	on p.pizza_id = ot.pizza_id
join orders as o
	on o.order_id = ot.order_id         
group by p.size
order by total_count desc
limit 1 ;