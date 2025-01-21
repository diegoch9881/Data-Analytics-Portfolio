#Sales_per_servicios_for_Regions

SELECT Region, 
       AVG(`Services Revenue (in billion $)`) AS Avg_Service_Revenue
FROM apple_sales_2024
GROUP BY Region
HAVING AVG(`Services Revenue (in billion $)`) > 10;
