--Average order of pizza per day.
WITH daily_pizza_counts AS(
     SELECT
	 O.date,
	 COUNT(OD.pizza_id) AS ordered_pizzas
	 FROM orders O 
	 JOIN order_details OD ON O.order_id = OD.order_id
	 GROUP BY O.date
    )
SELECT 
     ROUND(AVG(ordered_pizzas),2) avg_order
	 FROM daily_pizza_counts

--ANS. Average order per day = 135.81 

