with cte as
(
    select customer_id, order_date as od, customer_pref_delivery_date as cu, rank() over(partition by customer_id order by order_date) as bobo
    from delivery
)

select round(sum(case when od=cu then 1 else 0 end)/count(customer_id)*100.0000,2) as immediate_percentage
from cte
where bobo=1


