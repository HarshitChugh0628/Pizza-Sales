-- Join the necessary tables to find the total quantity of each pizza category ordered

select pt.category,
sum(od.quantity) as quantity
from pizza_types as pt
join pizzas as p
	on p.pizza_type_id = pt.pizza_type_id
join order_details as od
    on od.pizza_id = p.pizza_id
group by pt.category
order by quantity desc;