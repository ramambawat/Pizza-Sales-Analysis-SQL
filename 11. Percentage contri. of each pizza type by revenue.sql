--Percentage contribution of each pizza type by total revenue
SELECT pizza_type_id, ROUND(SUM (price*quantity)::NUMERIC,2)revenue,total,
ROUND((SUM ((price*quantity)/total_revenue.total)*100)::NUMERIC,2)percentage_contribution
FROM pizzas P
JOIN order_details od
ON P.pizza_id = od. pizza_id,
(SELECT ROUND (SUM ( price*quantity)::NUMERIC,2) total
FROM pizzas p  
INNER JOIN ORDER_DETAILS Od
ON P.PIZZA_ID=Od.PIZZA_ID)total_revenue
GROUP BY pizza_type_id, total_revenue.total
ORDER BY percentage_contribution DESC;

/*
ANS.
Pizza_type_id   	Revenue     Total		Percentile_contribution"
"thai_ckn"  		43434.25	817860.05	5.31
"bbq_ckn"			42768.00	817860.05	5.23
"cali_ckn"			41409.50	817860.05	5.06
"classic_dlx"		38180.50	817860.05	4.67
"spicy_ital"		34831.25	817860.05	4.26
"southw_ckn"		34705.75	817860.05	4.24
"ital_supr"			33476.75	817860.05	4.09
"four_cheese"		32265.70	817860.05	3.95
"hawaiian"			32273.25	817860.05	3.95
"sicilian"			30940.50	817860.05	3.78
"pepperoni"			30161.75	817860.05	3.69
"the_greek"			28454.10	817860.05	3.48
"mexicana"			26780.75	817860.05	3.27
"five_cheese"		26066.50	817860.05	3.19
"peppr_salami"		25529.00	817860.05	3.12
"ital_cpcllo"		25094.00	817860.05	3.07
"veggie_veg"		24374.75	817860.05	2.98
"prsc_argla"		24193.25	817860.05	2.96
"napolitana"		24087.00	817860.05	2.95
"spinach_fet"		23271.25	817860.05	2.85
"big_meat"			22968.00	817860.05	2.81
"pep_msh_pep"		18834.50	817860.05	2.30
"ckn_alfredo"		16900.25	817860.05	2.07
"ckn_pesto"			16701.75	817860.05	2.04
"soppressata"		16425.75	817860.05	2.01
"ital_veggie"		16019.25	817860.05	1.96
"calabrese"			15934.25	817860.05	1.95
"spin_pesto"		15596.00	817860.05	1.91
"mediterraneo"		15360.50	817860.05	1.88
"spinach_supr"		15277.75	817860.05	1.87
"green_garden"		13955.75	817860.05	1.71
"brie_carre"		11588.50	817860.05	1.42

*/