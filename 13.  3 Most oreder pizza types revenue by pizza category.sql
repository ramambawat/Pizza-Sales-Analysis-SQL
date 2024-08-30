--Top 3 most oreder pizza types based on revenue for each pizza category
WITH revenuecte as (
	SELECT 
		Pt.category,
		Pt.name,
		P.price,
		ROUND (SUM(Od.quantity*P.price)::NUMERIC,2)as revenue
	FROM pizza_types Pt
	JOIN pizzas P ON Pt.pizza_type_id = p.pizza_type_id
	JOIN order_details Od ON P.pizza_id = Od.pizza_id
	GROUP BY Pt.category,Pt.name,P.price
),
RankedPizzas as (
	SELECT 
		category,
		name,
		revenue,
		ROW_NUMBER()OVER (PARTITION BY category ORDER BY revenue DESC) AS rank
		FROM 
			revenuecte
)
SELECT 
	category,
	name,
	revenue
FROM
	rankedpizzas
WHERE
	rank <= 3
ORDER BY 
	category, rank;
/*
ANS
 Category	   Name								Total_revenue
 Chicken	"The Thai Chicken Pizza"			29257.50
 Chicken	"The Southwest Chicken Pizza"		21082.00
 Chicken	"The Barbecue Chicken Pizza"		20584.00
 Classic	"The Big Meat Pizza"				22968.00
 Classic	"The Classic Deluxe Pizza"			18896.00
 Classic	"The Hawaiian Pizza"				15163.50
 Supreme	"The Spicy Italian Pizza"			23011.75
 Supreme	"The Italian Supreme Pizza"			15526.50
 Supreme	"The Italian Supreme Pizza"			15500.25
 Veggie     "The Five Cheese Pizza"			26066.50
 Veggie 	"The Four Cheese Pizza"				23622.20
 Veggie 	"The Mexicana Pizza"				17556.75
*/