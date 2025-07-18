-- List the top 5 most ordered pizza types along with their quantities.

select pt.name , 
sum(od.quantity) as quantity
from pizza_types as pt
join pizzas as p
	on pt.pizza_type_id = p.pizza_type_id
join order_details as od
	on p.pizza_id = od.pizza_id
group by name
order by quantity desc
limit 5;
