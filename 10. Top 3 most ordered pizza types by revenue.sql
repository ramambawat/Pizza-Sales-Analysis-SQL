--Top 3 most ordered pizza types by revenue
SELECT pizza_type_id , SUM (price*quantity) revenue
FROM pizzas p 
JOIN order_details od
ON P.pizza_id = od.pizza_id
GROUP BY pizza_type_id
ORDER BY revenue DESC
LIMIT 3
/*
ANS.  

Pizza_types    Revenue

"thai_ckn"	   43434.25
"bbq_ckn"	   42768
"cali_ckn"	   41409.5
*/