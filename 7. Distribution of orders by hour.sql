--Distribution of orders by hour of the day 
SELECT EXTRACT (HOUR FROM time) hour_of_day, 
COUNT(order_id) order_count
FROM orders
GROUP BY hour_of_day
ORDER BY order_count DESC

/*
  ANS
HOUR   ORDER_COUNT
12       2520
13	     2455
18	     2399
17	     2336
19	     2009
16	     1920
20	     1642
14	     1472
15	     1468
11	     1231
21	     1198
22	     663
23	     28
10	     8
9	     1
*/