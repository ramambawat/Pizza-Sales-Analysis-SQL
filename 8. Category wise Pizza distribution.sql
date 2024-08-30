--Category wise Pizza distribution
SELECT Pt.category , COUNT(Pt.pizza_type_id) pizza_types_count
FROM pizza_types Pt 
GROUP BY category
ORDER BY pizza_types_count DESC

/*
ANS
 Category	   Pizza_types_count
"Supreme"	      9
"Veggie"	      9
"Classic"	      8
"Chicken"	      6
*/