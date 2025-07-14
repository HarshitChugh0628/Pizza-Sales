-- Group the orders by date and calculate the average number of pizzas ordered per day.

select round(avg(quantity),0) 
from
(select o.order_date, 
sum(od.quantity) as quantity
from orders as o 
join order_details as od
	on o.order_id = od.order_id
group by o.order_date) as order_quantity;