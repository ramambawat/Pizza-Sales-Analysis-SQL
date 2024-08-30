--Highest priced pizza

 SELECT name ,  MAX(price)  price 
 FROM pizza_types pt   
 JOIN pizzas p
 ON P.pizza_type_id = pt. pizza_type_id
 GROUP BY name
 ORDER BY  price DESC
 LIMIT (1) 

 /* 
 ANS  Name	                Price
      The Greek Pizza       35.95
 */
 

