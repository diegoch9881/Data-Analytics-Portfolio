#Grouped_States_by_Regions_with_Sales_Condition

SELECT State, Region, 
       SUM(`iPhone Sales (in million units)` + 
           `iPad Sales (in million units)` + 
           `Mac Sales (in million units)` + 
           `Wearables (in million units)`) AS Total_Sales,
       RANK() OVER (PARTITION BY Region ORDER BY SUM(`iPhone Sales (in million units)`) DESC) AS Sales_Rank_,
       DENSE_RANK() OVER (PARTITION BY Region ORDER BY SUM(`iPhone Sales (in million units)`) DESC) AS Dense_Rank_
FROM apple_sales_2024
GROUP BY State, Region;

-'I used the RANK() and DENSE_RANK() functions to assign a ranking to each       
state within its respective region based on the sum of iPhone sales, with the RANK()       
function giving a rank that skips numbers in case of ties and DENSE_RANK() giving ranks without skipping'
-'The PARTITION BY Region clause ensures that the ranking is done within each       
region, not across the entire dataset'
