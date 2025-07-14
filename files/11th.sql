-- Calculate the percentage contribution of each pizza type to total revenue.

select pt.category , 
round((sum(p.price*od.quantity)/ 
	(select sum(p.price*od.quantity) 
	from pizzas as p 
	join order_details as od 	
		on p.pizza_id = od.pizza_id))*100,2) as revenue
from pizzas as p
join pizza_types as pt
	on p.pizza_type_id = pt.pizza_type_id
join order_details as od 
	on od.pizza_id = p.pizza_id
group by pt.category;
