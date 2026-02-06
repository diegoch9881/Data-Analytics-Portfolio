#Sales_per_services_for_Regions

SELECT Region, 
       AVG(`Services Revenue (in billion $)`) AS Avg_Service_Revenue
FROM apple_sales_2024
GROUP BY Region
HAVING AVG(`Services Revenue (in billion $)`) > 10;

-'The query calculates the average services revenue per region using the AVG() function'
-'The HAVING clause is used to filter out regions with an average service revenue of        
$10 billion or less, ensuring that only regions with higher service revenue are included in the result'

-'The result of this query provides valuable insights into which regions have generated        
substantial service revenue for Apple in 2024. It is useful for targeting        
high-performing regions for business growth and marketing strategies'
