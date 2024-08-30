--Top 5 most ordered pizza types with their quantities

  SELECT DISTINCT pizza_type_id ,  quantity
  FROM pizzas P 
  JOIN order_details OD 
  ON p. pizza_id = OD.pizza_id
  ORDER BY quantity DESC
  LIMIT 5
/*
ANS.
    PIZZA TYPES    QUANTITY
    "cali_ckn"	       4
    "big_meat"	       4
    "hawaiian"    	   3
    "prsc_argla"	   3
    "sicilian"	       3
 */