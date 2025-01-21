#Total sales by region

SELECT Region, 
       SUM(`iPhone Sales (in million units)`) AS Total_iPhone_Sales, 
       SUM(`iPad Sales (in million units)`) AS Total_iPad_Sales, 
       SUM(`Mac Sales (in million units)`) AS Total_Mac_Sales
FROM apple_sales_2024
GROUP BY Region
ORDER BY Total_iPhone_Sales DESC;
