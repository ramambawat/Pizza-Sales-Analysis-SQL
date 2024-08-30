--Totat ordered quantity by each category
SELECT  category , SUM (quantity) odered_quantity
FROM order_details od  
JOIN pizzas p
ON od.pizza_id = p.pizza_id   
JOIN pizza_types pt
ON p. pizza_type_id = pt.pizza_type_id
GROUP BY category
ORDER BY odered_quantity DESC

/*
ANS.
     CATEGORY       ORDERED QUANTITY 
    "Classic"	        14888
    "Supreme"	        11987
    "Veggie"	        11649
    "Chicken"  	        11050
*/