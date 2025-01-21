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
