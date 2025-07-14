-- Identify the highest-priced pizza.


select pt.name,
p.price
from pizza_types as pt
join pizzas as p
	on pt.pizza_type_id = p.pizza_type_id
order by p.price desc 
limit 1;