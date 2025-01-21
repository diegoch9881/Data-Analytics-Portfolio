# Total_Sales_by_State_with_conditions
SELECT Region, 
       COUNT(*) AS Total_States, 
       SUM(`iPhone Sales (in million units)`) AS Total_iPhone_Sales,
       SUM(`Mac Sales (in million units)`) AS Total_Mac_Sales
FROM apple_sales_2024
WHERE Region IN ('Europe')
  AND `iPhone Sales (in million units)` > 6
  AND `Mac Sales (in million units)` > 5
GROUP BY Region
ORDER BY Total_iPhone_Sales DESC;

