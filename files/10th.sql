-- Determine the top 3 most ordered pizza types based on revenue.

select pt.name, 
sum(od.quantity*p.price) as revenue
from pizza_types as pt
join pizzas as p
	on pt.pizza_type_id = p.pizza_type_id
join order_details as od
	on p.pizza_id = od.pizza_id
group by pt.name
order by revenue desc 
limit 3;