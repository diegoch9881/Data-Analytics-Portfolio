#Comparison_of_Totals_for_each_Region
SELECT DISTINCT Region, 
       SUM(`Services Revenue (in billion $)`) AS Total_Services_Revenue, 
       SUM(`iPhone Sales (in million units)`) AS Total_iPhone_Sales,
       SUM(`Mac Sales (in million units)`) AS Total_Mac_Sales
FROM apple_sales_2024
GROUP BY Region
ORDER BY Region ASC;
