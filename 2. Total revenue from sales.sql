--Total revenue generated from pizza sales
SELECT ROUND(SUM ( price*quantity)::NUMERIC,2) total_revenue
FROM pizzas P 
INNER JOIN ORDER_DETAILS O
ON P.PIZZA_ID=O.PIZZA_ID
/*
ANS. Total_revenue = 817860.05
*/