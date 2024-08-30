-- Most common ordered pizza size
SELECT size , MAX(quantity) pizza_count
FROM pizzas p  
JOIN order_details od 
ON p.pizza_id = od.pizza_id 
GROUP BY size 
ORDER BY pizza_count DESC
LIMIT (2)

/* 
  ANS.  Size	           Pizza_count
        "S"	                4
        "L"                	4 
*/

